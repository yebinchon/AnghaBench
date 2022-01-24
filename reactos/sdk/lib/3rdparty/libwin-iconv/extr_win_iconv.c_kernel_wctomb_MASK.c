#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  ushort ;
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_4__ {int flags; int (* mblen ) (TYPE_1__*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  codepage; } ;
typedef  TYPE_1__ csconv_t ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  EILSEQ ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int FLAG_TRANSLIT ; 
 scalar_t__ FUNC0 () ; 
 int WC_NO_BEST_FIT_CHARS ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(csconv_t *cv, ushort *wbuf, int wbufsize, uchar *buf, int bufsize)
{
    BOOL usedDefaultChar = 0;
    BOOL *p = NULL;
    int flags = 0;
    int len;

    if (bufsize == 0)
        return FUNC3(E2BIG);
    if (!FUNC2(cv->codepage))
    {
        p = &usedDefaultChar;
#ifdef WC_NO_BEST_FIT_CHARS
        if (!(cv->flags & FLAG_TRANSLIT))
            flags |= WC_NO_BEST_FIT_CHARS;
#endif
    }
    len = FUNC1(cv->codepage, flags,
            (const wchar_t *)wbuf, wbufsize, (char *)buf, bufsize, NULL, p);
    if (len == 0)
    {
        if (FUNC0() == ERROR_INSUFFICIENT_BUFFER)
            return FUNC3(E2BIG);
        return FUNC3(EILSEQ);
    }
    else if (usedDefaultChar && !(cv->flags & FLAG_TRANSLIT))
        return FUNC3(EILSEQ);
    else if (cv->mblen(cv, buf, len) != len) /* validate result */
        return FUNC3(EILSEQ);
    return len;
}