#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ WBEM_E_INVALID_PARAMETER ; 
 scalar_t__ WBEM_E_INVALID_QUERY_TYPE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,size_t,...) ; 
 char const* wqlW ; 

__attribute__((used)) static void FUNC7( IWbemServices *services )
{
    static const WCHAR emptyW[] = {0};
    static const WCHAR sqlW[] = {'S','Q','L',0};
    static const WCHAR query1[] =
        {'S','E','L','E','C','T',' ','H','O','T','F','I','X','I','D',' ','F','R','O','M',' ',
         'W','i','n','3','2','_','Q','u','i','c','k','F','i','x','E','n','g','i','n','e','e','r','i','n','g',0};
    static const WCHAR query2[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_','B','I','O','S',0};
    static const WCHAR query3[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'L','o','g','i','c','a','l','D','i','s','k',' ','W','H','E','R','E',' ',
         '\"','N','T','F','S','\"',' ','=',' ','F','i','l','e','S','y','s','t','e','m',0};
    static const WCHAR query4[] =
        {'S','E','L','E','C','T',' ','a',' ','F','R','O','M',' ','b',0};
    static const WCHAR query5[] =
        {'S','E','L','E','C','T',' ','a',' ','F','R','O','M',' ','W','i','n','3','2','_','B','i','o','s',0};
    static const WCHAR query6[] =
        {'S','E','L','E','C','T',' ','D','e','s','c','r','i','p','t','i','o','n',' ','F','R','O','M',' ',
         'W','i','n','3','2','_','B','i','o','s',0};
    static const WCHAR query7[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'P','r','o','c','e','s','s',' ','W','H','E','R','E',' ','C','a','p','t','i','o','n',' ',
         'L','I','K','E',' ','\'','%','%','R','E','G','E','D','I','T','%','\'',0};
    static const WCHAR query8[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'D','i','s','k','D','r','i','v','e',' ','W','H','E','R','E',' ','D','e','v','i','c','e','I','D','=',
         '\"','\\','\\','\\','\\','.','\\','\\','P','H','Y','S','I','C','A','L','D','R','I','V','E','0','\"',0};
    static const WCHAR query9[] =
        {'S','E','L','E','C','T','\n','a','\r','F','R','O','M','\t','b',0};
    static const WCHAR query10[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'P','r','o','c','e','s','s',' ','W','H','E','R','E',' ','C','a','p','t','i','o','n',' ',
         'L','I','K','E',' ','"','%','f','i','r','e','f','o','x','.','e','x','e','"',0};
    static const WCHAR query11[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
         'W','i','n','3','2','_','V','i','d','e','o','C','o','n','t','r','o','l','l','e','r',' ','w','h','e','r','e',' ',
         'a','v','a','i','l','a','b','i','l','i','t','y',' ','=',' ','\'','3','\'',0};
    static const WCHAR query12[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_','B','I','O','S',
         ' ','W','H','E','R','E',' ','N','A','M','E',' ','<','>',' ','N','U','L','L', 0};
    static const WCHAR query13[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_','B','I','O','S',
         ' ','W','H','E','R','E',' ','N','U','L','L',' ','=',' ','N','A','M','E', 0};
    static const WCHAR *test[] = { query1, query2, query3, query4, query5, query6, query7, query8, query9, query10,
                                   query11, query12, query13 };
    HRESULT hr;
    IEnumWbemClassObject *result;
    BSTR wql = FUNC3( wqlW );
    BSTR sql = FUNC3( sqlW );
    BSTR query = FUNC3( query1 );
    UINT i;

    hr = FUNC2( services, NULL, NULL, 0, NULL, &result );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "query failed %08x\n", hr );

    hr = FUNC2( services, NULL, query, 0, NULL, &result );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "query failed %08x\n", hr );

    hr = FUNC2( services, wql, NULL, 0, NULL, &result );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "query failed %08x\n", hr );

    hr = FUNC2( services, sql, query, 0, NULL, &result );
    FUNC6( hr == WBEM_E_INVALID_QUERY_TYPE, "query failed %08x\n", hr );

    hr = FUNC2( services, sql, NULL, 0, NULL, &result );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "query failed %08x\n", hr );

    FUNC4( query );
    query = FUNC3( emptyW );
    hr = FUNC2( services, wql, query, 0, NULL, &result );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "query failed %08x\n", hr );

    for (i = 0; i < FUNC0( test ); i++)
    {
        hr = FUNC5( services, test[i], &result );
        FUNC6( hr == S_OK, "query %u failed: %08x\n", i, hr );
        if (result) FUNC1( result );
    }

    FUNC4( wql );
    FUNC4( sql );
    FUNC4( query );
}