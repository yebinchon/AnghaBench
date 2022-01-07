
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extensions_manager_t ;


 int ScanLuaCallback ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (int *) ;
 int VLC_SUCCESS ;
 int vlclua_scripts_batch_execute (int ,char*,int *,int *) ;

__attribute__((used)) static int ScanExtensions( extensions_manager_t *p_mgr )
{
    int i_ret =
        vlclua_scripts_batch_execute( VLC_OBJECT( p_mgr ),
                                      "extensions",
                                      &ScanLuaCallback,
                                      ((void*)0) );

    if( !i_ret )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
