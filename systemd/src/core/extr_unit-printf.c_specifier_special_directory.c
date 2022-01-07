
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_4__ {int * prefix; } ;


 int ENOMEM ;
 size_t PTR_TO_UINT (void const*) ;
 int assert (TYPE_2__ const*) ;
 char* strdup (int ) ;

__attribute__((used)) static int specifier_special_directory(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;
        char *n = ((void*)0);

        assert(u);

        n = strdup(u->manager->prefix[PTR_TO_UINT(data)]);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}
