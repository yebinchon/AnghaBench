
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hostname; } ;
typedef TYPE_1__ Settings ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int assert_se (char const*) ;
 int free_and_strdup_warn (int *,char const*) ;
 int hostname_is_valid (char const*,int) ;
 int json_log (int *,int ,int ,char*,char const*) ;
 char* json_variant_string (int *) ;

__attribute__((used)) static int oci_hostname(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        Settings *s = userdata;
        const char *n;

        assert(s);

        assert_se(n = json_variant_string(v));

        if (!hostname_is_valid(n, 0))
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "Hostname string is not a valid hostname: %s", n);

        return free_and_strdup_warn(&s->hostname, n);
}
