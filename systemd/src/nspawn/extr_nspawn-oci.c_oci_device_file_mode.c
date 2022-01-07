
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int mode_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (int*) ;
 int json_log (int *,int ,int ,char*) ;
 scalar_t__ json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_device_file_mode(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        mode_t *mode = userdata, m;
        uintmax_t k;

        assert(mode);

        k = json_variant_unsigned(v);
        m = (mode_t) k;

        if ((m & ~07777) != 0 || (uintmax_t) m != k)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "fileMode out of range, refusing.");

        *mode = m;
        return 0;
}
