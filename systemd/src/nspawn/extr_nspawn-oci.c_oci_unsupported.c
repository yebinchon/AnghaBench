
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EOPNOTSUPP ;
 int SYNTHETIC_ERRNO (int ) ;
 int json_log (int *,int ,int ,char*,char const*,int ) ;
 int json_variant_type (int *) ;
 int json_variant_type_to_string (int ) ;

__attribute__((used)) static int oci_unsupported(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        return json_log(v, flags, SYNTHETIC_ERRNO(EOPNOTSUPP),
                        "Unsupported OCI element '%s' of type '%s'.", name, json_variant_type_to_string(json_variant_type(v)));
}
