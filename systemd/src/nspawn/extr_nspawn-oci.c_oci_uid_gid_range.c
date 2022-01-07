
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ uid_t ;
typedef int gid_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (scalar_t__*) ;
 int assert_cc (int) ;
 int json_log (int *,int ,int ,char*,...) ;
 scalar_t__ json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_uid_gid_range(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        uid_t *uid = userdata, u;
        uintmax_t k;

        assert(uid);
        assert_cc(sizeof(uid_t) == sizeof(gid_t));





        k = json_variant_unsigned(v);
        u = (uid_t) k;
        if ((uintmax_t) u != k)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "UID/GID out of range: %ji", k);
        if (u == 0)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "UID/GID range can't be zero.");

        *uid = u;
        return 0;
}
