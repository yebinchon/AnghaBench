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
struct assembly_name {size_t index; int /*<<< orphan*/ * attrs; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  struct assembly_name* LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static UINT FUNC6( MSIRECORD *rec, LPVOID param )
{
    static const WCHAR fmtW[] = {'%','s','=','"','%','s','"',0};
    static const WCHAR nameW[] = {'n','a','m','e',0};
    struct assembly_name *name = param;
    const WCHAR *attr = FUNC0( rec, 2 );
    const WCHAR *value = FUNC0( rec, 3 );
    int len = FUNC5( fmtW ) + FUNC5( attr ) + FUNC5( value );

    if (!(name->attrs[name->index] = FUNC1( len * sizeof(WCHAR) )))
        return ERROR_OUTOFMEMORY;

    if (!FUNC3( attr, nameW )) FUNC4( name->attrs[name->index++], value );
    else FUNC2( name->attrs[name->index++], fmtW, attr, value );
    return ERROR_SUCCESS;
}