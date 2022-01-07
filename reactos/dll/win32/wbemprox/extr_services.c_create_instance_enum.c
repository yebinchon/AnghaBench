
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
typedef int WCHAR ;
typedef int IEnumWbemClassObject ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int exec_query (int *,int **) ;
 int heap_free (int *) ;
 int * query_from_path (struct path const*) ;

__attribute__((used)) static HRESULT create_instance_enum( const struct path *path, IEnumWbemClassObject **iter )
{
    WCHAR *query;
    HRESULT hr;

    if (!(query = query_from_path( path ))) return E_OUTOFMEMORY;
    hr = exec_query( query, iter );
    heap_free( query );
    return hr;
}
