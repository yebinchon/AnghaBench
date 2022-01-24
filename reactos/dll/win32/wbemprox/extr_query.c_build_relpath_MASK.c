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
struct view {scalar_t__ proplist; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct view const*) ; 
 int /*<<< orphan*/ * FUNC4 (struct view const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct view const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static BSTR FUNC8( const struct view *view, UINT index, const WCHAR *name )
{
    static const WCHAR fmtW[] = {'%','s','.','%','s',0};
    BSTR class, proplist, ret = NULL;
    UINT num_keys, len;

    if (view->proplist) return NULL;

    if (!(class = FUNC3( view ))) return NULL;
    if (!(num_keys = FUNC5( view ))) return class;
    if (!(proplist = FUNC4( view, index, num_keys, &len ))) goto done;

    len += FUNC7( fmtW ) + FUNC2( class );
    if (!(ret = FUNC0( NULL, len ))) goto done;
    FUNC6( ret, fmtW, class, proplist );

done:
    FUNC1( class );
    FUNC1( proplist );
    return ret;
}