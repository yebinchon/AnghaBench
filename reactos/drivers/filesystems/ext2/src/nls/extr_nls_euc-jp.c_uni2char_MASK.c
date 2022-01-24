#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {int (* uni2char ) (int /*<<< orphan*/  const,unsigned char*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (unsigned char,unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char,unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char,unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,unsigned char,int,unsigned char,unsigned char,int) ; 
 unsigned char SS2 ; 
 unsigned char SS3 ; 
 TYPE_1__* p_nls ; 
 int FUNC6 (unsigned char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char,unsigned char) ; 
 int FUNC8 (int /*<<< orphan*/  const,unsigned char*,int) ; 

__attribute__((used)) static int FUNC9(const wchar_t uni,
                    unsigned char *out, int boundlen)
{
    int n;

    if (!p_nls)
        return -EINVAL;
    if ((n = p_nls->uni2char(uni, out, boundlen)) < 0)
        return n;

    /* translate SJIS into EUC-JP */
    if (n == 1) {
        if (FUNC1(out[0])) {
            /* JIS X 0201 KANA */
            if (boundlen < 2)
                return -ENAMETOOLONG;

            out[1] = out[0];
            out[0] = SS2;
            return 2;
        }
    } else if (n == 2) {
        /* NEC/IBM extended characters to IBM extended characters */
        FUNC7(out, out[0], out[1]);

        if (FUNC4(out[0], out[1])) {
            /* User defined characters half low */
            FUNC5(out[0], out[1], 0xF0, out[0], out[1], 0xF5);
        } else if (FUNC3(out[0], out[1])) {
            /* User defined characters half high */
            unsigned char ch, cl;

            if (boundlen < 3)
                return -ENAMETOOLONG;

            n = 3;
            ch = out[0];
            cl = out[1];
            out[0] = SS3;
            FUNC5(ch, cl, 0xF5, out[1], out[2], 0xF5);
        } else if (FUNC0(out[0], out[1])) {
            /* IBM extended characters */
            unsigned char euc[3], i;

            n = FUNC6(euc, out[0], out[1]);
            if (boundlen < n)
                return -ENAMETOOLONG;
            for (i = 0; i < n; i++)
                out[i] = euc[i];
        } else if (FUNC2(out[0], out[1])) {
            /* JIS X 0208 (include NEC special characters) */
            out[0] = (out[0]^0xA0)*2 + 0x5F;
            if (out[1] > 0x9E)
                out[0]++;

            if (out[1] < 0x7F)
                out[1] = out[1] + 0x61;
            else if (out[1] < 0x9F)
                out[1] = out[1] + 0x60;
            else
                out[1] = out[1] + 0x02;
        } else {
            /* Invalid characters */
            return -EINVAL;
        }
    }
    else
        return -EINVAL;

    return n;
}