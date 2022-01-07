
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int psz_name; } ;
typedef TYPE_1__ module_config_t ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int confnamecmp (const void *key, const void *elem)
{
    const module_config_t *const *conf = elem;

    return strcmp (key, (*conf)->psz_name);
}
