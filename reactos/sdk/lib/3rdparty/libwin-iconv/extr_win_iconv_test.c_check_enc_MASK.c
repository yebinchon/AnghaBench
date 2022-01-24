#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int codepage; } ;
struct TYPE_4__ {TYPE_1__ from; } ;
typedef  TYPE_2__ rec_iconv_t ;
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int,...) ; 

int
FUNC4(const char *encname, int codepage)
{
    iconv_t cd;
    int cp;
    cd = FUNC2("utf-8", encname);
    if (cd == (iconv_t)(-1))
    {
        FUNC3("%s(%d) IS NOT SUPPORTED: SKIP THE TEST\n", encname, codepage);
        return FALSE;
    }
#ifndef USE_ICONV_H
    cp = ((rec_iconv_t *)cd)->from.codepage;
    if (cp != codepage)
    {
        FUNC3("%s(%d) ALIAS IS MAPPED TO DIFFERENT CODEPAGE (%d)\n", encname, codepage, cp);
        FUNC0(1);
    }
#endif
    FUNC1(cd);
    return TRUE;
}