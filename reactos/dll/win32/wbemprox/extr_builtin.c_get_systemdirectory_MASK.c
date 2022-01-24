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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static WCHAR *FUNC4(void)
{
    void *redir;
    WCHAR *ret;

    if (!(ret = FUNC3( MAX_PATH * sizeof(WCHAR) ))) return NULL;
    FUNC1( &redir );
    FUNC0( ret, MAX_PATH );
    FUNC2( redir );
    return ret;
}