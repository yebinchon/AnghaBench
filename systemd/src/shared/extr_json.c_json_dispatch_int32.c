
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef scalar_t__ JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (scalar_t__*) ;
 int json_log (scalar_t__*,int ,int ,char*,int ) ;
 scalar_t__ json_variant_integer (scalar_t__*) ;
 int json_variant_is_integer (scalar_t__*) ;
 int strna (char const*) ;

int json_dispatch_int32(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        int32_t *i = userdata;

        assert(variant);
        assert(i);

        if (!json_variant_is_integer(variant))
                return json_log(variant, flags, SYNTHETIC_ERRNO(EINVAL), "JSON field '%s' is not an integer.", strna(name));

        if (json_variant_integer(variant) < INT32_MIN || json_variant_integer(variant) > INT32_MAX)
                return json_log(variant, flags, SYNTHETIC_ERRNO(ERANGE), "JSON field '%s' out of bounds.", strna(name));

        *i = (int32_t) json_variant_integer(variant);
        return 0;
}
