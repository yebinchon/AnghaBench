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
typedef  int /*<<< orphan*/  IAssemblyName ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ASM_CMPF_IL_ALL ; 
 int /*<<< orphan*/  CANOF_PARSE_DISPLAY_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    static const WCHAR wine1[] =
        {'w','i','n','e',0};
    static const WCHAR wine2[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',0};
    static const WCHAR wine3[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',',',
         'c','u','l','t','u','r','e','=','n','e','u','t','r','a','l',0};
    static const WCHAR wine4[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',',',
         'c','u','l','t','u','r','e','=','e','n',0};
    static const WCHAR wine5[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',',',
         'p','u','b','l','i','c','K','e','y','T','o','k','e','n','=','1','2','3','4','5','6',
         '7','8','9','0','a','b','c','d','e','f',0};
    HRESULT hr;
    IAssemblyName *name1, *name2;

    hr = FUNC3( &name1, wine1, CANOF_PARSE_DISPLAY_NAME, NULL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    hr = FUNC3( &name2, wine1, CANOF_PARSE_DISPLAY_NAME, NULL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    if (0) { /* crashes on some old version */
    hr = FUNC0( name1, NULL, 0 );
    FUNC2( hr == S_FALSE, "got %08x\n", hr );

    hr = FUNC0( name1, NULL, ASM_CMPF_IL_ALL );
    FUNC2( hr == S_FALSE, "got %08x\n", hr );
    }

    hr = FUNC0( name1, name1, ASM_CMPF_IL_ALL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    hr = FUNC0( name1, name2, ASM_CMPF_IL_ALL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    FUNC1( name2 );
    hr = FUNC3( &name2, wine2, CANOF_PARSE_DISPLAY_NAME, NULL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    hr = FUNC0( name1, name2, ASM_CMPF_IL_ALL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    FUNC1( name2 );
    hr = FUNC3( &name2, wine3, CANOF_PARSE_DISPLAY_NAME, NULL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    hr = FUNC0( name1, name2, ASM_CMPF_IL_ALL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    FUNC1( name1 );
    hr = FUNC3( &name1, wine4, CANOF_PARSE_DISPLAY_NAME, NULL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    hr = FUNC0( name1, name2, ASM_CMPF_IL_ALL );
    FUNC2( hr == S_FALSE, "got %08x\n", hr );

    FUNC1( name1 );
    hr = FUNC3( &name1, wine1, CANOF_PARSE_DISPLAY_NAME, NULL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    FUNC1( name2 );
    hr = FUNC3( &name2, wine5, CANOF_PARSE_DISPLAY_NAME, NULL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    hr = FUNC0( name1, name2, ASM_CMPF_IL_ALL );
    FUNC2( hr == S_OK, "got %08x\n", hr );

    FUNC1( name1 );
    FUNC1( name2 );
}