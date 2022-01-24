#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  Inf; } ;
typedef  int /*<<< orphan*/  INT ;
typedef  TYPE_1__ INFCONTEXT ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*,unsigned int,unsigned int*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,unsigned int) ; 

WCHAR *FUNC6( INFCONTEXT *context )
{
    const WCHAR *dir;
    WCHAR *ptr, *ret;
    INT dirid;
    unsigned int len1;
    DWORD len2;

    if (!FUNC2( context, 1, &dirid )) return NULL;
    if (!(dir = FUNC4( context->Inf, dirid, &len1 ))) return NULL;
    if (!FUNC3( context, 2, NULL, 0, &len2 )) len2 = 0;
    if (!(ret = FUNC1( FUNC0(), 0, (len1+len2+1) * sizeof(WCHAR) ))) return NULL;
    FUNC5( ret, dir, len1 * sizeof(WCHAR) );
    ptr = ret + len1;
    if (len2 && ptr > ret && ptr[-1] != '\\') *ptr++ = '\\';
    if (!FUNC3( context, 2, ptr, len2, NULL )) *ptr = 0;
    return ret;
}