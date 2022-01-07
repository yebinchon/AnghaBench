
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addons_manager_t ;
typedef int addon_uuid_t ;
typedef int addon_entry_t ;


 int InstallEntry (int *,int *) ;
 int VLC_EGENERIC ;
 int addon_entry_Release (int *) ;
 int * getHeldEntryByUUID (int *,int const) ;

int addons_manager_Install( addons_manager_t *p_manager, const addon_uuid_t uuid )
{
    addon_entry_t *p_install_entry = getHeldEntryByUUID( p_manager, uuid );
    if ( ! p_install_entry ) return VLC_EGENERIC;
    int i_ret = InstallEntry( p_manager, p_install_entry );
    addon_entry_Release( p_install_entry );
    return i_ret;
}
