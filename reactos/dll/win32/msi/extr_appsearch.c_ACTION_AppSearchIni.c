
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_14__ {int db; } ;
struct TYPE_13__ {int hdr; } ;
struct TYPE_12__ {int Name; } ;
typedef TYPE_1__ MSISIGNATURE ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSIPACKAGE ;
typedef int * LPWSTR ;


 int ACTION_SearchDirectory (TYPE_3__*,TYPE_1__*,char*,int ,int **) ;
 int ERROR_SUCCESS ;
 int GetPrivateProfileStringW (int *,int *,int *,char*,int,int *) ;
 int MAX_PATH ;
 int MSI_NULL_INTEGER ;
 TYPE_2__* MSI_QueryGetRecord (int ,char const*,int ) ;
 int MSI_RecordGetInteger (TYPE_2__*,int) ;
 int TRACE (char*,int ) ;
 int * app_search_file (char*,TYPE_1__*) ;
 int debugstr_w (int ) ;
 int * get_ini_field (char*,int) ;
 int * msi_dup_record_field (TYPE_2__*,int) ;
 int msi_free (int *) ;



 int msiobj_release (int *) ;

__attribute__((used)) static UINT ACTION_AppSearchIni(MSIPACKAGE *package, LPWSTR *appValue,
 MSISIGNATURE *sig)
{
    static const WCHAR query[] = {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ',
        'I','n','i','L','o','c','a','t','o','r',' ',
        'w','h','e','r','e',' ',
        'S','i','g','n','a','t','u','r','e','_',' ','=',' ','\'','%','s','\'',0};
    MSIRECORD *row;
    LPWSTR fileName, section, key;
    int field, type;
    WCHAR buf[MAX_PATH];

    TRACE("%s\n", debugstr_w(sig->Name));

    *appValue = ((void*)0);

    row = MSI_QueryGetRecord( package->db, query, sig->Name );
    if (!row)
    {
        TRACE("failed to query IniLocator for %s\n", debugstr_w(sig->Name));
        return ERROR_SUCCESS;
    }

    fileName = msi_dup_record_field(row, 2);
    section = msi_dup_record_field(row, 3);
    key = msi_dup_record_field(row, 4);
    field = MSI_RecordGetInteger(row, 5);
    type = MSI_RecordGetInteger(row, 6);
    if (field == MSI_NULL_INTEGER)
        field = 0;
    if (type == MSI_NULL_INTEGER)
        type = 0;

    GetPrivateProfileStringW(section, key, ((void*)0), buf, MAX_PATH, fileName);
    if (buf[0])
    {
        switch (type & 0x0f)
        {
        case 130:
            ACTION_SearchDirectory(package, sig, buf, 0, appValue);
            break;
        case 129:
            *appValue = app_search_file(buf, sig);
            break;
        case 128:
            *appValue = get_ini_field(buf, field);
            break;
        }
    }

    msi_free(fileName);
    msi_free(section);
    msi_free(key);

    msiobj_release(&row->hdr);

    return ERROR_SUCCESS;
}
