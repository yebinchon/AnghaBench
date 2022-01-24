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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WBEM_FLAG_NONSYSTEM_ONLY ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 char const* wqlW ; 

__attribute__((used)) static void FUNC10( IWbemServices *services )
{
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'O','p','e','r','a','t','i','n','g','S','y','s','t','e','m',0};
    BSTR wql = FUNC6( wqlW ), query = FUNC6( queryW );
    IEnumWbemClassObject *result;
    HRESULT hr;

    hr = FUNC4( services, wql, query, 0, NULL, &result );
    FUNC9( hr == S_OK, "got %08x\n", hr );

    for (;;)
    {
        IWbemClassObject *obj;
        SAFEARRAY *names;
        ULONG count;
        VARIANT val;

        FUNC0( result, 10000, 1, &obj, &count );
        if (!count) break;

        FUNC8( &val );
        hr = FUNC2( obj, NULL, WBEM_FLAG_NONSYSTEM_ONLY, &val, &names );
        FUNC9( hr == S_OK, "got %08x\n", hr );

        FUNC5( names );
        FUNC3( obj );
    }
    FUNC1( result );
    FUNC7( query );
    FUNC7( wql );
}