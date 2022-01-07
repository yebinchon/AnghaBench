
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int psz_name; } ;
typedef TYPE_1__ module_config_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int confcmp (const void *a, const void *b)
{
    const module_config_t *const *ca = a, *const *cb = b;

    return strcmp ((*ca)->psz_name, (*cb)->psz_name);
}
