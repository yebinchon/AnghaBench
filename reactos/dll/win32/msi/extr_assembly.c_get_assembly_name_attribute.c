
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assembly_name {size_t index; int * attrs; } ;
typedef char WCHAR ;
typedef int UINT ;
typedef int MSIRECORD ;
typedef struct assembly_name* LPVOID ;


 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 char* MSI_RecordGetString (int *,int) ;
 int msi_alloc (int) ;
 int sprintfW (int ,char const*,char const*,char const*) ;
 int strcmpiW (char const*,char const*) ;
 int strcpyW (int ,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static UINT get_assembly_name_attribute( MSIRECORD *rec, LPVOID param )
{
    static const WCHAR fmtW[] = {'%','s','=','"','%','s','"',0};
    static const WCHAR nameW[] = {'n','a','m','e',0};
    struct assembly_name *name = param;
    const WCHAR *attr = MSI_RecordGetString( rec, 2 );
    const WCHAR *value = MSI_RecordGetString( rec, 3 );
    int len = strlenW( fmtW ) + strlenW( attr ) + strlenW( value );

    if (!(name->attrs[name->index] = msi_alloc( len * sizeof(WCHAR) )))
        return ERROR_OUTOFMEMORY;

    if (!strcmpiW( attr, nameW )) strcpyW( name->attrs[name->index++], value );
    else sprintfW( name->attrs[name->index++], fmtW, attr, value );
    return ERROR_SUCCESS;
}
