
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int JSON_DEBUG ;
 int json_log (int *,int,int ,char*,char const*) ;
 char* json_variant_string (int *) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int oci_rootfs_propagation(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        const char *s;

        s = json_variant_string(v);

        if (streq(s, "shared"))
                return 0;

        json_log(v, flags|JSON_DEBUG, 0, "Ignoring rootfsPropagation setting '%s'.", s);
        return 0;
}
