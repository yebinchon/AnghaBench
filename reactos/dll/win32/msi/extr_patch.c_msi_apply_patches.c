
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int **** LPWSTR ;


 size_t ERROR_SUCCESS ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ****) ;
 size_t msi_apply_patch_package (TYPE_1__*,int ****) ;
 int ****** msi_dup_property (int ,int ) ;
 int msi_free (int ****) ;
 int ******* msi_split_string (int ****,char) ;
 int szPatch ;

UINT msi_apply_patches( MSIPACKAGE *package )
{
    LPWSTR patch_list, *patches;
    UINT i, r = ERROR_SUCCESS;

    patch_list = msi_dup_property( package->db, szPatch );

    TRACE("patches to be applied: %s\n", debugstr_w(patch_list));

    patches = msi_split_string( patch_list, ';' );
    for (i = 0; patches && patches[i] && r == ERROR_SUCCESS; i++)
        r = msi_apply_patch_package( package, patches[i] );

    msi_free( patches );
    msi_free( patch_list );
    return r;
}
