
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ UINT32_MAX ;
 int assert (scalar_t__*) ;
 int json_log (scalar_t__*,int ,int ,char*,int ) ;
 int json_variant_is_unsigned (scalar_t__*) ;
 scalar_t__ json_variant_unsigned (scalar_t__*) ;
 int strna (char const*) ;

int json_dispatch_uint32(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        uint32_t *u = userdata;

        assert(variant);
        assert(u);

        if (!json_variant_is_unsigned(variant))
                return json_log(variant, flags, SYNTHETIC_ERRNO(EINVAL), "JSON field '%s' is not an unsigned integer.", strna(name));

        if (json_variant_unsigned(variant) > UINT32_MAX)
                return json_log(variant, flags, SYNTHETIC_ERRNO(ERANGE), "JSON field '%s' out of bounds.", strna(name));

        *u = (uint32_t) json_variant_unsigned(variant);
        return 0;
}
