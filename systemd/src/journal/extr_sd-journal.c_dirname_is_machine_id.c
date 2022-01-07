
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int sd_id128_equal (int ,int ) ;
 int sd_id128_from_string (char const*,int *) ;
 int sd_id128_get_machine (int *) ;

__attribute__((used)) static int dirname_is_machine_id(const char *fn) {
        sd_id128_t id, machine;
        int r;

        r = sd_id128_get_machine(&machine);
        if (r < 0)
                return r;

        r = sd_id128_from_string(fn, &id);
        if (r < 0)
                return r;

        return sd_id128_equal(id, machine);
}
