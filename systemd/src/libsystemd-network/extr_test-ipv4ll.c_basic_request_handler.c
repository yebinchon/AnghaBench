
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_ipv4ll ;




 int assert_se (int) ;
 int basic_request_handler_bind ;
 int basic_request_handler_stop ;
 void* basic_request_handler_userdata ;

__attribute__((used)) static void basic_request_handler(sd_ipv4ll *ll, int event, void *userdata) {
        assert_se(userdata == basic_request_handler_userdata);

        switch(event) {
                case 128:
                        basic_request_handler_stop = 1;
                        break;
                case 129:
                        basic_request_handler_bind = 1;
                        break;
                default:
                        assert_se(0);
                        break;
        }
}
