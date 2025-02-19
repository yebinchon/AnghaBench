
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int uintmax_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 int UINT64_MAX ;
 int USEC_PER_SEC ;
 int json_log (int *,int ,int ,char*) ;
 int json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_hook_timeout(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        usec_t *u = userdata;
        uintmax_t k;

        k = json_variant_unsigned(v);
        if (k == 0 || k > (UINT64_MAX-1)/USEC_PER_SEC)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "Hook timeout value out of range.");

        *u = k * USEC_PER_SEC;
        return 0;
}
