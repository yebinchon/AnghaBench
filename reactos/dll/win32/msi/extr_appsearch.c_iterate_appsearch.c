
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_14__ {int db; } ;
struct TYPE_13__ {int hdr; } ;
typedef int MSISIGNATURE ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int * LPWSTR ;
typedef TYPE_2__* LPVOID ;
typedef int LPCWSTR ;


 int ACTION_AppSearchSigName (TYPE_2__*,int ,int *,int **) ;
 int ACTION_FreeSignature (int *) ;
 int ERROR_SUCCESS ;
 int INSTALLMESSAGE_ACTIONDATA ;
 TYPE_1__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (TYPE_2__*,int ,TYPE_1__*) ;
 int MSI_RecordGetString (TYPE_1__*,int) ;
 int MSI_RecordSetStringW (TYPE_1__*,int,int ) ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int msi_free (int *) ;
 int msi_reset_folders (TYPE_2__*,int ) ;
 int msi_set_property (int ,int ,int *,int) ;
 int msiobj_release (int *) ;
 int strcmpW (int ,int ) ;
 int szSourceDir ;

__attribute__((used)) static UINT iterate_appsearch(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    LPCWSTR propName, sigName;
    LPWSTR value = ((void*)0);
    MSISIGNATURE sig;
    MSIRECORD *uirow;
    UINT r;


    propName = MSI_RecordGetString(row, 1);
    sigName = MSI_RecordGetString(row, 2);

    TRACE("%s %s\n", debugstr_w(propName), debugstr_w(sigName));

    r = ACTION_AppSearchSigName(package, sigName, &sig, &value);
    if (value)
    {
        r = msi_set_property( package->db, propName, value, -1 );
        if (r == ERROR_SUCCESS && !strcmpW( propName, szSourceDir ))
            msi_reset_folders( package, TRUE );

        msi_free(value);
    }
    ACTION_FreeSignature(&sig);

    uirow = MSI_CreateRecord( 2 );
    MSI_RecordSetStringW( uirow, 1, propName );
    MSI_RecordSetStringW( uirow, 2, sigName );
    MSI_ProcessMessage(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    msiobj_release( &uirow->hdr );

    return r;
}
