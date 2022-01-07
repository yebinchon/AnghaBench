
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addons_manager_t ;


 int LoadLocalStorage (int *) ;
 int VLC_SUCCESS ;

int addons_manager_LoadCatalog( addons_manager_t *p_manager )
{
    LoadLocalStorage( p_manager );
    return VLC_SUCCESS;
}
