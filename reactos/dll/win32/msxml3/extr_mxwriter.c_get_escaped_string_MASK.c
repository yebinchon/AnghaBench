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
typedef  int /*<<< orphan*/  ltW ;
typedef  int /*<<< orphan*/  gtW ;
typedef  int /*<<< orphan*/  escape_mode ;
typedef  int /*<<< orphan*/  equotW ;
typedef  int /*<<< orphan*/  ampW ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  EscapeValue ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (int,int const) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static WCHAR *FUNC5(const WCHAR *str, escape_mode mode, int *len)
{
    static const WCHAR ltW[]    = {'&','l','t',';'};
    static const WCHAR ampW[]   = {'&','a','m','p',';'};
    static const WCHAR equotW[] = {'&','q','u','o','t',';'};
    static const WCHAR gtW[]    = {'&','g','t',';'};

    const int default_alloc = 100;
    const int grow_thresh = 10;
    int p = *len, conv_len;
    WCHAR *ptr, *ret;

    /* default buffer size to something if length is unknown */
    conv_len = FUNC3(2**len, default_alloc);
    ptr = ret = FUNC1(conv_len*sizeof(WCHAR));

    while (p)
    {
        if (ptr - ret > conv_len - grow_thresh)
        {
            int written = ptr - ret;
            conv_len *= 2;
            ptr = ret = FUNC2(ret, conv_len*sizeof(WCHAR));
            ptr += written;
        }

        switch (*str)
        {
        case '<':
            FUNC4(ptr, ltW, sizeof(ltW));
            ptr += FUNC0(ltW);
            break;
        case '&':
            FUNC4(ptr, ampW, sizeof(ampW));
            ptr += FUNC0(ampW);
            break;
        case '>':
            FUNC4(ptr, gtW, sizeof(gtW));
            ptr += FUNC0(gtW);
            break;
        case '"':
            if (mode == EscapeValue)
            {
                FUNC4(ptr, equotW, sizeof(equotW));
                ptr += FUNC0(equotW);
                break;
            }
            /* fallthrough for text mode */
        default:
            *ptr++ = *str;
            break;
        }

        str++;
        p--;
    }

    *len = ptr-ret;
    *++ptr = 0;

    return ret;
}