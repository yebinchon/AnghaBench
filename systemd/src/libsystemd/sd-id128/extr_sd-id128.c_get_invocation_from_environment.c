
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int ENXIO ;
 int assert (int *) ;
 int sd_id128_from_string (char const*,int *) ;
 char* secure_getenv (char*) ;

__attribute__((used)) static int get_invocation_from_environment(sd_id128_t *ret) {
        const char *e;

        assert(ret);

        e = secure_getenv("INVOCATION_ID");
        if (!e)
                return -ENXIO;

        return sd_id128_from_string(e, ret);
}
