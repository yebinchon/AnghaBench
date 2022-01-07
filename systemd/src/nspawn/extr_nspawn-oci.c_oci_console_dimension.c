
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ USHRT_MAX ;
 int assert (unsigned int*) ;
 int json_log (int *,int ,int ,char*,int ) ;
 scalar_t__ json_variant_unsigned (int *) ;
 int strna (char const*) ;

__attribute__((used)) static int oci_console_dimension(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        unsigned *u = userdata;
        uintmax_t k;

        assert(u);

        k = json_variant_unsigned(variant);
        if (k == 0)
                return json_log(variant, flags, SYNTHETIC_ERRNO(ERANGE),
                                "Console size field '%s' is too small.", strna(name));
        if (k > USHRT_MAX)
                return json_log(variant, flags, SYNTHETIC_ERRNO(ERANGE),
                                "Console size field '%s' is too large.", strna(name));

        *u = (unsigned) k;
        return 0;
}
