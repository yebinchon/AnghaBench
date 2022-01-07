
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 scalar_t__ STR_IN_SET (char const*,char*,char*) ;
 int SYNTHETIC_ERRNO (int ) ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFIFO ;
 int S_IFMT ;
 int assert (int*) ;
 int assert_se (char const*) ;
 int json_log (int *,int ,int ,char*,char const*) ;
 char* json_variant_string (int *) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int oci_device_type(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        mode_t *mode = userdata;
        const char *t;

        assert(mode);
        assert_se(t = json_variant_string(v));

        if (STR_IN_SET(t, "c", "u"))
                *mode = (*mode & ~S_IFMT) | S_IFCHR;
        else if (streq(t, "b"))
                *mode = (*mode & ~S_IFMT) | S_IFBLK;
        else if (streq(t, "p"))
                *mode = (*mode & ~S_IFMT) | S_IFIFO;
        else
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "Unknown device type: %s", t);

        return 0;
}
