class ApiController < ApplicationController
  def api_init
             @msg =
            { 
              type: "buttons",
              buttons: ["소개", "멋쟁이 사자처럼", "깃허브","멋사 AT KOREATECH"]
            }
        render json: @msg, status: :ok
  end

  def api_message
    @response = params[:content]
        
        if @response == "소개"
            @msg = {
            message: {
                text: "안녕하세요. 저는 개발자 꿈나무입니다. 네이버와 티스토리에서 블로그를 운영하고 있습니다. 서로이웃 환영합니다~",
                photo: {
                  url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/MAKERS.jpg",
                  width: 640,
                  height: 480
                },
                message_button: {
                  label: "NAVER BLOG",
                  url: "https://blog.naver.com/xhdtn8070/221231786261"
                }
              },
              keyboard: {
                type: "buttons",
                buttons: ["소개", "멋쟁이 사자처럼", "깃허브","멋사 AT KOREATECH"]
              }
            }
            render json: @msg, status: :ok
        elsif @response == "멋쟁이 사자처럼"
            @msg = {
              message: {
                text: "멋쟁이 사자처럼은 어떤 동아리 인가요? 멋쟁이사자처럼은 비전공자도 코딩을 통해 자신이 만들고 싶은 서비스를 만들 수 있게 하는 것을 모토로 2013년 서울대학교에서 시작한 단체입니다. 현재 전국 각지의 대학교에서 멋쟁이사자차럼 활동이 진행되고 있고, 많은 학생들이 자신만의 서비스를 직접 만들고 있습니다.자체 개발된 온라인 강의 플랫폼 '클래스라이언' 을 통해 강의를 듣고 과제를 수행합니다.
다양한 오프라인 활동과 병행하여 뜻을 같이하는 동료를 찾고
자신이 만들고자 하는 서비스를 직접 프로그래밍 하도록 돕습니다.",
              photo: {
                  url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
                  width: 640,
                  height: 480
              },
                message_button: {
                  label: "LIKE LION",
                  url: "https://likelion.net/"
                }
              },
              keyboard: {
                type: "buttons",
                buttons: ["소개", "멋쟁이 사자처럼", "깃허브","멋사 AT KOREATECH"]
              }
              
        }
            render json: @msg, status: :ok
        elsif @response == "깃허브"
            @msg = {
              message: {
                text: "하나씩 공부의 흔적을 남기는 곳입니다. 필요한 코드가 있으시면 다 가져가세요~",
                photo: {
                  url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/5.PNG",
                  width: 640,
                  height: 480
                },
                message_button: {
                  label: "GitHub",
                  url: "https://github.com/xhdtn8070"
                }
              },
              keyboard: {
                type: "buttons",
                buttons: ["소개", "멋쟁이 사자처럼", "깃허브","멋사 AT KOREATECH"]
              }
            }
            render json: @msg, status: :ok
        elsif @response="멋사 AT KOREATECH"
            @msg = {
              message: {
                text: "안녕하세요. 저는 멋쟁이 사자처럼 AT KOREATECH 소속입니다. 복거톤이나 다른 연합활동에 뜻이 있는 분들은 블로그에 댓글주세요~~~~~ ",
                photo: {
                  url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/2.PNG",
                  width: 640,
                  height: 480
                },
                message_button: {
                  label: "멋사 AT KOREATECH",
                  url: "http://koreatech.likelion.org/"
                }
              },
              keyboard: {
                type: "buttons",
                buttons: ["소개", "멋쟁이 사자처럼", "깃허브","멋사 AT KOREATECH"]
              }
            }
            render json: @msg, status: :ok
    end
  end
end
