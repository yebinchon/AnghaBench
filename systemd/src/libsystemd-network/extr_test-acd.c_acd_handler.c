
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_ipv4acd ;





 int assert_not_reached (char*) ;
 int assert_se (int *) ;
 int log_error (char*) ;
 int log_info (char*) ;

__attribute__((used)) static void acd_handler(sd_ipv4acd *acd, int event, void *userdata) {
        assert_se(acd);

        switch (event) {
        case 130:
                log_info("bound");
                break;
        case 129:
                log_info("conflict");
                break;
        case 128:
                log_error("the client was stopped");
                break;
        default:
                assert_not_reached("invalid ACD event");
        }
}
