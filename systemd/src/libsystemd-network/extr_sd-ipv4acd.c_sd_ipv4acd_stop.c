
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_ipv4acd ;


 int EINVAL ;
 int SD_IPV4ACD_EVENT_STOP ;
 int assert_return (int *,int ) ;
 int ipv4acd_client_notify (int *,int ) ;
 int ipv4acd_reset (int *) ;
 int log_ipv4acd (int *,char*) ;

int sd_ipv4acd_stop(sd_ipv4acd *acd) {
        assert_return(acd, -EINVAL);

        ipv4acd_reset(acd);

        log_ipv4acd(acd, "STOPPED");

        ipv4acd_client_notify(acd, SD_IPV4ACD_EVENT_STOP);

        return 0;
}
