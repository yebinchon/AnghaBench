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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct view const*) ; 
 int /*<<< orphan*/ * FUNC4 (struct view const*,scalar_t__,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (struct view const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static BSTR FUNC8( const struct view *view, UINT index, const WCHAR *name )
{
    static const WCHAR fmtW[] = {'\\','\\','%','s','\\','%','s',':','%','s',0};
    BSTR server, namespace = NULL, relpath = NULL, ret = NULL;
    UINT len;

    if (view->proplist) return NULL;

    if (!(server = FUNC5( view ))) return NULL;
    if (!(namespace = FUNC3( view ))) goto done;
    if (!(relpath = FUNC4( view, index, name ))) goto done;

    len = FUNC7( fmtW ) + FUNC2( server ) + FUNC2( namespace ) + FUNC2( relpath );
    if (!(ret = FUNC0( NULL, len ))) goto done;
    FUNC6( ret, fmtW, server, namespace, relpath );

done:
    FUNC1( server );
    FUNC1( namespace );
    FUNC1( relpath );
    return ret;
}