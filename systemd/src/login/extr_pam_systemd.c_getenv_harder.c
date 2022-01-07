
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const pam_handle_t ;


 int assert (char const*) ;
 int isempty (char const*) ;
 char* pam_getenv (char const*,char const*) ;
 char* secure_getenv (char const*) ;

__attribute__((used)) static const char* getenv_harder(pam_handle_t *handle, const char *key, const char *fallback) {
        const char *v;

        assert(handle);
        assert(key);







        v = pam_getenv(handle, key);
        if (!isempty(v))
                return v;





        v = secure_getenv(key);
        if (!isempty(v))
                return v;

        return fallback;
}
