
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getuid () ;
 char* secure_getenv (char*) ;
 char* strdup (char const*) ;
 char* uid_to_name (int ) ;

char *getusername_malloc(void) {
        const char *e;

        e = secure_getenv("USER");
        if (e)
                return strdup(e);

        return uid_to_name(getuid());
}
