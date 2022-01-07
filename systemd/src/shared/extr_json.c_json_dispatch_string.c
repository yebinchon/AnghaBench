
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (char**) ;
 int free_and_strdup (char**,int ) ;
 int json_log (char**,int ,int,char*,...) ;
 scalar_t__ json_variant_is_null (char**) ;
 int json_variant_is_string (char**) ;
 int json_variant_string (char**) ;
 char* mfree (char*) ;
 int strna (char const*) ;

int json_dispatch_string(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        char **s = userdata;
        int r;

        assert(variant);
        assert(s);

        if (json_variant_is_null(variant)) {
                *s = mfree(*s);
                return 0;
        }

        if (!json_variant_is_string(variant))
                return json_log(variant, flags, SYNTHETIC_ERRNO(EINVAL), "JSON field '%s' is not a string.", strna(name));

        r = free_and_strdup(s, json_variant_string(variant));
        if (r < 0)
                return json_log(variant, flags, r, "Failed to allocate string: %m");

        return 0;
}
