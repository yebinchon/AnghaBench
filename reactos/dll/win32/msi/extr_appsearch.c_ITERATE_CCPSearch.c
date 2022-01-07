
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_5__ {int db; } ;
typedef int MSISIGNATURE ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int * LPWSTR ;
typedef TYPE_1__* LPVOID ;
typedef int LPCWSTR ;


 int ACTION_AppSearchSigName (TYPE_1__*,int ,int *,int **) ;
 int ACTION_FreeSignature (int *) ;
 int ERROR_NO_MORE_ITEMS ;
 int ERROR_SUCCESS ;
 int MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 int msi_free (int *) ;
 int msi_set_property (int ,char const*,int ,int) ;
 int szOne ;

__attribute__((used)) static UINT ITERATE_CCPSearch(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    LPCWSTR signature;
    LPWSTR value = ((void*)0);
    MSISIGNATURE sig;
    UINT r = ERROR_SUCCESS;

    static const WCHAR success[] = {'C','C','P','_','S','u','c','c','e','s','s',0};

    signature = MSI_RecordGetString(row, 1);

    TRACE("%s\n", debugstr_w(signature));

    ACTION_AppSearchSigName(package, signature, &sig, &value);
    if (value)
    {
        TRACE("Found signature %s\n", debugstr_w(signature));
        msi_set_property( package->db, success, szOne, -1 );
        msi_free(value);
        r = ERROR_NO_MORE_ITEMS;
    }

    ACTION_FreeSignature(&sig);

    return r;
}
