
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (char**) ;
 int free_and_strdup_warn (char**,char const*) ;
 int json_log (int *,int ,int ,char*,int ,char const*) ;
 char* json_variant_string (int *) ;
 int path_is_absolute (char const*) ;
 int strna (char const*) ;

__attribute__((used)) static int oci_absolute_path(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        char **p = userdata;
        const char *n;

        assert(p);

        n = json_variant_string(v);

        if (!path_is_absolute(n))
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "Path in JSON field '%s' is not absolute: %s", strna(name), n);

        return free_and_strdup_warn(p, n);
}
