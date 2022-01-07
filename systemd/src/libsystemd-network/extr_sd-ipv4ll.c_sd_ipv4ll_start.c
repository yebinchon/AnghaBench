
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_ipv4ll ;


 int EBUSY ;
 int EINVAL ;
 int assert_return (int,int ) ;
 int ipv4ll_start_internal (int *,int) ;
 scalar_t__ sd_ipv4ll_is_running (int *) ;

int sd_ipv4ll_start(sd_ipv4ll *ll) {
        assert_return(ll, -EINVAL);
        assert_return(sd_ipv4ll_is_running(ll) == 0, -EBUSY);

        return ipv4ll_start_internal(ll, 1);
}
