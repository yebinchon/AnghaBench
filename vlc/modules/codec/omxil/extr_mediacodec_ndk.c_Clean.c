
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_sys; int psz_name; } ;
typedef TYPE_1__ mc_api ;


 int free (int ) ;

__attribute__((used)) static void Clean(mc_api *api)
{
    free(api->psz_name);
    free(api->p_sys);
}
