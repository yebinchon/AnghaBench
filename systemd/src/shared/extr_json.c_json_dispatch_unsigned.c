
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (int *) ;
 int json_log (int *,int ,int ,char*,int ) ;
 int json_variant_is_unsigned (int *) ;
 int json_variant_unsigned (int *) ;
 int strna (char const*) ;

int json_dispatch_unsigned(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        uintmax_t *u = userdata;

        assert(variant);
        assert(u);

        if (!json_variant_is_unsigned(variant))
                return json_log(variant, flags, SYNTHETIC_ERRNO(EINVAL), "JSON field '%s' is not an unsigned integer.", strna(name));

        *u = json_variant_unsigned(variant);
        return 0;
}
