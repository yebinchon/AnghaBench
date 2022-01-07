
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query {int view; int mem; } ;
typedef int WCHAR ;
typedef int IEnumWbemClassObject ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ EnumWbemClassObject_create (struct query*,void**) ;
 scalar_t__ S_OK ;
 struct query* create_query () ;
 scalar_t__ execute_view (int ) ;
 scalar_t__ parse_query (int const*,int *,int *) ;
 int release_query (struct query*) ;

HRESULT exec_query( const WCHAR *str, IEnumWbemClassObject **result )
{
    HRESULT hr;
    struct query *query;

    *result = ((void*)0);
    if (!(query = create_query())) return E_OUTOFMEMORY;
    hr = parse_query( str, &query->view, &query->mem );
    if (hr != S_OK) goto done;
    hr = execute_view( query->view );
    if (hr != S_OK) goto done;
    hr = EnumWbemClassObject_create( query, (void **)result );

done:
    release_query( query );
    return hr;
}
