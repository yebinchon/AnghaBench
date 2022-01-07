
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (int *) ;
 int json_log (int *,int ,int ,char*,int ) ;
 int json_variant_integer (int *) ;
 int json_variant_is_integer (int *) ;
 int strna (char const*) ;

int json_dispatch_integer(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        intmax_t *i = userdata;

        assert(variant);
        assert(i);

        if (!json_variant_is_integer(variant))
                return json_log(variant, flags, SYNTHETIC_ERRNO(EINVAL), "JSON field '%s' is not an integer.", strna(name));

        *i = json_variant_integer(variant);
        return 0;
}
