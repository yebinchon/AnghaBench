
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_18__ {scalar_t__ Action; int Component; } ;
struct TYPE_17__ {int TargetPath; TYPE_1__* Component; } ;
struct TYPE_16__ {int hdr; } ;
struct TYPE_15__ {int Component; } ;
typedef TYPE_2__ MSIRECORD ;
typedef int MSIPACKAGE ;
typedef TYPE_3__ MSIFILE ;
typedef TYPE_4__ MSICOMPONENT ;
typedef scalar_t__ LPWSTR ;
typedef int * LPVOID ;
typedef int LPCWSTR ;
typedef int HKEY ;


 int ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int INSTALLMESSAGE_ACTIONDATA ;
 scalar_t__ INSTALLSTATE_ABSENT ;
 TYPE_2__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (int *,int ,TYPE_2__*) ;
 int MSI_RecordGetString (TYPE_2__*,int) ;
 scalar_t__ MSI_RecordIsNull (TYPE_2__*,int) ;
 int MSI_RecordSetStringW (TYPE_2__*,int,scalar_t__) ;
 int RegCloseKey (int ) ;
 int RegCreateKeyW (int ,int ,int *) ;
 int RegDeleteValueW (int ,scalar_t__) ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ font_name_from_file (int ) ;
 scalar_t__ msi_dup_record_field (TYPE_2__*,int) ;
 int msi_free (scalar_t__) ;
 scalar_t__ msi_get_component_action (int *,TYPE_4__*) ;
 TYPE_4__* msi_get_loaded_component (int *,int ) ;
 TYPE_3__* msi_get_loaded_file (int *,int ) ;
 int msiobj_release (int *) ;
 int regfont1 ;
 int regfont2 ;
 scalar_t__ strdupW (int ) ;
 scalar_t__ strrchrW (scalar_t__,char) ;

__attribute__((used)) static UINT ITERATE_UnregisterFonts( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    LPWSTR name;
    LPCWSTR filename;
    MSIFILE *file;
    MSICOMPONENT *comp;
    HKEY hkey1, hkey2;
    MSIRECORD *uirow;
    LPWSTR uipath, p;

    filename = MSI_RecordGetString( row, 1 );
    file = msi_get_loaded_file( package, filename );
    if (!file)
    {
        WARN("unable to find file %s\n", debugstr_w(filename));
        return ERROR_SUCCESS;
    }
    comp = msi_get_loaded_component( package, file->Component->Component );
    if (!comp)
    {
        WARN("unable to find component %s\n", debugstr_w(file->Component->Component));
        return ERROR_SUCCESS;
    }
    comp->Action = msi_get_component_action( package, comp );
    if (comp->Action != INSTALLSTATE_ABSENT)
    {
        TRACE("component not scheduled for removal %s\n", debugstr_w(comp->Component));
        return ERROR_SUCCESS;
    }

    RegCreateKeyW( HKEY_LOCAL_MACHINE, regfont1, &hkey1 );
    RegCreateKeyW( HKEY_LOCAL_MACHINE, regfont2, &hkey2 );

    if (MSI_RecordIsNull( row, 2 ))
        name = font_name_from_file( file->TargetPath );
    else
        name = msi_dup_record_field( row, 2 );

    if (name)
    {
        RegDeleteValueW( hkey1, name );
        RegDeleteValueW( hkey2, name );
    }

    msi_free( name );
    RegCloseKey( hkey1 );
    RegCloseKey( hkey2 );


    uirow = MSI_CreateRecord( 1 );
    uipath = strdupW( file->TargetPath );
    p = strrchrW( uipath,'\\' );
    if (p) p++;
    else p = uipath;
    MSI_RecordSetStringW( uirow, 1, p );
    MSI_ProcessMessage(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    msiobj_release( &uirow->hdr );
    msi_free( uipath );


    return ERROR_SUCCESS;
}
