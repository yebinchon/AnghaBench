
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int EINVAL ;
 size_t FAMILY_ADDRESS_SIZE (int) ;
 int IN_SET (int,int ,int ) ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (char**) ;
 int in_addr_to_string (int,void const*,char**) ;
 int log_error_errno (int ,char*,...) ;
 char* mfree (char*) ;
 int sd_bus_message_enter_container (int *,char,char*) ;
 int sd_bus_message_exit_container (int *) ;
 int sd_bus_message_read (int *,char*,int*) ;
 int sd_bus_message_read_array (int *,char,void const**,size_t*) ;

__attribute__((used)) static int map_server_address(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        char **p = (char **) userdata;
        const void *d;
        int family, r;
        size_t sz;

        assert(p);

        r = sd_bus_message_enter_container(m, 'r', "iay");
        if (r < 0)
                return r;

        r = sd_bus_message_read(m, "i", &family);
        if (r < 0)
                return r;

        r = sd_bus_message_read_array(m, 'y', &d, &sz);
        if (r < 0)
                return r;

        r = sd_bus_message_exit_container(m);
        if (r < 0)
                return r;

        if (sz == 0 && family == AF_UNSPEC) {
                *p = mfree(*p);
                return 0;
        }

        if (!IN_SET(family, AF_INET, AF_INET6))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Unknown address family %i", family);

        if (sz != FAMILY_ADDRESS_SIZE(family))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Invalid address size");

        r = in_addr_to_string(family, d, p);
        if (r < 0)
                return r;

        return 0;
}
