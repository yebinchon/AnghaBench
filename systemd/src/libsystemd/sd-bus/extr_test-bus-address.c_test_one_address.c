
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * address; } ;
typedef TYPE_1__ sd_bus ;


 int assert (int) ;
 int assert_se (int ) ;
 int bus_set_address_system_remote (TYPE_1__*,char const*) ;
 int log_info (char*,char const*,int,int ) ;
 int streq (int *,char const*) ;
 int strna (int *) ;

__attribute__((used)) static void test_one_address(sd_bus *b,
                             const char *host,
                             int result, const char *expected) {
        int r;

        r = bus_set_address_system_remote(b, host);
        log_info("\"%s\" → %d, \"%s\"", host, r, strna(r >= 0 ? b->address : ((void*)0)));
        if (result < 0 || expected) {
                assert(r == result);
                if (r >= 0)
                        assert_se(streq(b->address, expected));
        }
}
