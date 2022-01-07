
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timezone; } ;
typedef TYPE_1__ sd_dhcp_server ;


 int EINVAL ;
 int LOG_DEBUG ;
 int assert_return (TYPE_1__*,int ) ;
 int free_and_strdup (int *,char const*) ;
 scalar_t__ streq_ptr (char const*,int ) ;
 TYPE_1__* timezone_is_valid (char const*,int ) ;

int sd_dhcp_server_set_timezone(sd_dhcp_server *server, const char *tz) {
        int r;

        assert_return(server, -EINVAL);
        assert_return(timezone_is_valid(tz, LOG_DEBUG), -EINVAL);

        if (streq_ptr(tz, server->timezone))
                return 0;

        r = free_and_strdup(&server->timezone, tz);
        if (r < 0)
                return r;

        return 1;
}
