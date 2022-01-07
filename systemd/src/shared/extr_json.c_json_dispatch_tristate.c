
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (int*) ;
 int json_log (int*,int ,int ,char*,int ) ;
 int json_variant_boolean (int*) ;
 int json_variant_is_boolean (int*) ;
 int strna (char const*) ;

int json_dispatch_tristate(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        int *b = userdata;

        assert(variant);
        assert(b);

        if (!json_variant_is_boolean(variant))
                return json_log(variant, flags, SYNTHETIC_ERRNO(EINVAL), "JSON field '%s' is not a boolean.", strna(name));

        *b = json_variant_boolean(variant);
        return 0;
}
