
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int getuid () ;
 char* uid_to_name (int ) ;

int specifier_user_name(char specifier, const void *data, const void *userdata, char **ret) {
        char *t;
        t = uid_to_name(getuid());
        if (!t)
                return -ENOMEM;

        *ret = t;
        return 0;
}
