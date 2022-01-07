
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_primary_key_record_info {int n; scalar_t__ rec; } ;
typedef int UINT ;
typedef int MSIRECORD ;
typedef struct msi_primary_key_record_info* LPVOID ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int MSITYPE_KEY ;
 int MSI_RecordGetInteger (int *,int) ;
 int MSI_RecordGetString (int *,int) ;
 int MSI_RecordSetStringW (scalar_t__,int,int ) ;

__attribute__((used)) static UINT msi_primary_key_iterator( MSIRECORD *rec, LPVOID param )
{
    struct msi_primary_key_record_info *info = param;
    LPCWSTR name, table;
    DWORD type;

    type = MSI_RecordGetInteger( rec, 4 );
    if( type & MSITYPE_KEY )
    {
        info->n++;
        if( info->rec )
        {
            if ( info->n == 1 )
            {
                table = MSI_RecordGetString( rec, 1 );
                MSI_RecordSetStringW( info->rec, 0, table);
            }

            name = MSI_RecordGetString( rec, 3 );
            MSI_RecordSetStringW( info->rec, info->n, name );
        }
    }

    return ERROR_SUCCESS;
}
