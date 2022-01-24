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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char const* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int WBEM_FLAG_FORWARD_ONLY ; 
 int WBEM_FLAG_RETURN_IMMEDIATELY ; 
 scalar_t__ WBEM_S_NO_ERROR ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char const* wqlW ; 

__attribute__((used)) static HRESULT FUNC10( IWbemServices *services, const WCHAR *str, IEnumWbemClassObject **result )
{
    static const WCHAR captionW[] = {'C','a','p','t','i','o','n',0};
    static const WCHAR descriptionW[] = {'D','e','s','c','r','i','p','t','i','o','n',0};
    HRESULT hr;
    IWbemClassObject *obj;
    BSTR wql = FUNC4( wqlW ), query = FUNC4( str );
    LONG flags = WBEM_FLAG_RETURN_IMMEDIATELY | WBEM_FLAG_FORWARD_ONLY;
    ULONG count;

    hr = FUNC3( services, wql, query, flags, NULL, result );
    if (hr == S_OK)
    {
        FUNC8("%s\n", FUNC9(str));
        for (;;)
        {
            VARIANT var;

            FUNC0( *result, 10000, 1, &obj, &count );
            if (!count) break;

            if (FUNC1( obj, captionW, 0, &var, NULL, NULL ) == WBEM_S_NO_ERROR)
            {
                FUNC8("caption: %s\n", FUNC9(FUNC6(&var)));
                FUNC7( &var );
            }
            if (FUNC1( obj, descriptionW, 0, &var, NULL, NULL ) == WBEM_S_NO_ERROR)
            {
                FUNC8("description: %s\n", FUNC9(FUNC6(&var)));
                FUNC7( &var );
            }
            FUNC2( obj );
        }
    }
    FUNC5( wql );
    FUNC5( query );
    return hr;
}