
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int getgid () ;
 char* gid_to_name (int ) ;

int specifier_group_name(char specifier, const void *data, const void *userdata, char **ret) {
        char *t;

        t = gid_to_name(getgid());
        if (!t)
                return -ENOMEM;

        *ret = t;
        return 0;
}
