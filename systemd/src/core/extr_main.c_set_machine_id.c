
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int EINVAL ;
 int arg_machine_id ;
 int assert (char const*) ;
 scalar_t__ sd_id128_from_string (char const*,int *) ;
 scalar_t__ sd_id128_is_null (int ) ;

__attribute__((used)) static int set_machine_id(const char *m) {
        sd_id128_t t;
        assert(m);

        if (sd_id128_from_string(m, &t) < 0)
                return -EINVAL;

        if (sd_id128_is_null(t))
                return -EINVAL;

        arg_machine_id = t;
        return 0;
}
