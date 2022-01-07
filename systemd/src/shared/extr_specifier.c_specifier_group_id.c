
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int UID_FMT ;
 scalar_t__ asprintf (char**,int ,int ) ;
 int getgid () ;

int specifier_group_id(char specifier, const void *data, const void *userdata, char **ret) {
        if (asprintf(ret, UID_FMT, getgid()) < 0)
                return -ENOMEM;

        return 0;
}
