
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_15__ {scalar_t__ Action; } ;
struct TYPE_14__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIPACKAGE ;
typedef TYPE_2__ MSICOMPONENT ;
typedef char* LPWSTR ;
typedef int * LPVOID ;
typedef char* LPCWSTR ;
typedef int INT ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int INSTALLMESSAGE_ACTIONDATA ;
 scalar_t__ INSTALLSTATE_ABSENT ;
 TYPE_1__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (int *,int ,TYPE_1__*) ;
 int MSI_RecordGetInteger (TYPE_1__*,int) ;
 char* MSI_RecordGetString (TYPE_1__*,int) ;
 scalar_t__ MSI_RecordIsNull (TYPE_1__*,int) ;
 int MSI_RecordSetStringW (TYPE_1__*,int,char*) ;
 int REG_PROGRESS_VALUE ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int debugstr_w (char*) ;
 int deformat_string (int *,char*,char**) ;
 int delete_tree (TYPE_2__*,int ,char*) ;
 int delete_value (TYPE_2__*,int ,char*,char*) ;
 char* get_root_key (int *,int ,int *) ;
 char* msi_alloc (int) ;
 int msi_free (char*) ;
 scalar_t__ msi_get_component_action (int *,TYPE_2__*) ;
 TYPE_2__* msi_get_loaded_component (int *,char*) ;
 int msi_ui_progress (int *,int,int ,int ,int ) ;
 int msiobj_release (int *) ;
 int strcatW (char*,char*) ;
 int strcpyW (char*,char*) ;
 int strlenW (char*) ;

__attribute__((used)) static UINT ITERATE_RemoveRegistryValuesOnUninstall( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    LPCWSTR component, name, key_str, root_key_str;
    LPWSTR deformated_key, deformated_name, ui_key_str;
    MSICOMPONENT *comp;
    MSIRECORD *uirow;
    BOOL delete_key = FALSE;
    HKEY hkey_root;
    UINT size;
    INT root;

    msi_ui_progress( package, 2, REG_PROGRESS_VALUE, 0, 0 );

    component = MSI_RecordGetString( row, 6 );
    comp = msi_get_loaded_component( package, component );
    if (!comp)
        return ERROR_SUCCESS;

    comp->Action = msi_get_component_action( package, comp );
    if (comp->Action != INSTALLSTATE_ABSENT)
    {
        TRACE("component not scheduled for removal %s\n", debugstr_w(component));
        return ERROR_SUCCESS;
    }

    name = MSI_RecordGetString( row, 4 );
    if (MSI_RecordIsNull( row, 5 ) && name )
    {
        if (name[0] == '+' && !name[1])
            return ERROR_SUCCESS;
        if ((name[0] == '-' || name[0] == '*') && !name[1])
        {
            delete_key = TRUE;
            name = ((void*)0);
        }
    }

    root = MSI_RecordGetInteger( row, 2 );
    key_str = MSI_RecordGetString( row, 3 );

    root_key_str = get_root_key( package, root, &hkey_root );
    if (!root_key_str)
        return ERROR_SUCCESS;

    deformat_string( package, key_str, &deformated_key );
    size = strlenW( deformated_key ) + strlenW( root_key_str ) + 1;
    ui_key_str = msi_alloc( size * sizeof(WCHAR) );
    strcpyW( ui_key_str, root_key_str );
    strcatW( ui_key_str, deformated_key );

    deformat_string( package, name, &deformated_name );

    if (delete_key) delete_tree( comp, hkey_root, deformated_key );
    else delete_value( comp, hkey_root, deformated_key, deformated_name );
    msi_free( deformated_key );

    uirow = MSI_CreateRecord( 2 );
    MSI_RecordSetStringW( uirow, 1, ui_key_str );
    MSI_RecordSetStringW( uirow, 2, deformated_name );
    MSI_ProcessMessage(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    msiobj_release( &uirow->hdr );

    msi_free( ui_key_str );
    msi_free( deformated_name );
    return ERROR_SUCCESS;
}
