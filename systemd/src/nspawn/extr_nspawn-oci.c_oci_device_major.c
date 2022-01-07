
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int DEVICE_MAJOR_VALID (scalar_t__) ;
 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert_se (unsigned int*) ;
 int json_log (int *,int ,int ,char*,scalar_t__) ;
 scalar_t__ json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_device_major(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        unsigned *u = userdata;
        uintmax_t k;

        assert_se(u);

        k = json_variant_unsigned(v);
        if (!DEVICE_MAJOR_VALID(k))
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "Device major %ji out of range.", k);

        *u = (unsigned) k;
        return 0;
}
