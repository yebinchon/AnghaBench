
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ rlim_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ RLIM_INFINITY ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (scalar_t__*) ;
 int json_log (int *,int ,int ,char*) ;
 scalar_t__ json_variant_is_negative (int *) ;
 int json_variant_is_unsigned (int *) ;
 scalar_t__ json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_rlimit_value(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        rlim_t z, *value = userdata;

        assert(value);

        if (json_variant_is_negative(v))
                z = RLIM_INFINITY;
        else {
                if (!json_variant_is_unsigned(v))
                        return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                        "rlimits limit not unsigned, refusing.");

                z = (rlim_t) json_variant_unsigned(v);

                if ((uintmax_t) z != json_variant_unsigned(v))
                        return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                        "rlimits limit out of range, refusing.");
        }

        *value = z;
        return 0;
}
