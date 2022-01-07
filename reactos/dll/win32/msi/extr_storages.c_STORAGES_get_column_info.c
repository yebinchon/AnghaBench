
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int MAX_STORAGES_NAME_LEN ;
 int MSITYPE_NULLABLE ;
 int MSITYPE_STRING ;
 int MSITYPE_VALID ;
 int NUM_STORAGES_COLS ;
 int TRACE (char*,struct tagMSIVIEW*,int,int *,int*,int *,int *) ;
 int szData ;
 int szName ;
 int szStorages ;

__attribute__((used)) static UINT STORAGES_get_column_info( struct tagMSIVIEW *view, UINT n, LPCWSTR *name,
                                      UINT *type, BOOL *temporary, LPCWSTR *table_name )
{
    TRACE("(%p, %d, %p, %p, %p, %p)\n", view, n, name, type, temporary,
          table_name);

    if (n == 0 || n > NUM_STORAGES_COLS)
        return ERROR_INVALID_PARAMETER;

    switch (n)
    {
    case 1:
        if (name) *name = szName;
        if (type) *type = MSITYPE_STRING | MSITYPE_VALID | MAX_STORAGES_NAME_LEN;
        break;

    case 2:
        if (name) *name = szData;
        if (type) *type = MSITYPE_STRING | MSITYPE_VALID | MSITYPE_NULLABLE;
        break;
    }
    if (table_name) *table_name = szStorages;
    if (temporary) *temporary = FALSE;
    return ERROR_SUCCESS;
}
