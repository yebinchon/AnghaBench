#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_5__ {int esc_len; int /*<<< orphan*/  esc; } ;
typedef  TYPE_1__ iso2022_esc_t ;
struct TYPE_6__ {scalar_t__ mode; } ;
typedef  TYPE_2__ csconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 size_t ISO2022JP_CS_ASCII ; 
 scalar_t__ FUNC0 (size_t,scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ ISO2022_SI ; 
 int /*<<< orphan*/  iso2022_SI_seq ; 
 TYPE_1__* iso2022jp_esc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(csconv_t *cv, uchar *buf, int bufsize)
{
    iso2022_esc_t *iesc = iso2022jp_esc;
    int esc_len;

    if (cv->mode != FUNC0(ISO2022JP_CS_ASCII, ISO2022_SI))
    {
        esc_len = 0;
        if (FUNC2(cv->mode) != ISO2022_SI)
            esc_len += 1;
        if (FUNC1(cv->mode) != ISO2022JP_CS_ASCII)
            esc_len += iesc[ISO2022JP_CS_ASCII].esc_len;
        if (bufsize < esc_len)
            return FUNC4(E2BIG);

        esc_len = 0;
        if (FUNC2(cv->mode) != ISO2022_SI)
        {
            FUNC3(buf, iso2022_SI_seq, 1);
            esc_len += 1;
        }
        if (FUNC1(cv->mode) != ISO2022JP_CS_ASCII)
        {
            FUNC3(buf + esc_len, iesc[ISO2022JP_CS_ASCII].esc,
                    iesc[ISO2022JP_CS_ASCII].esc_len);
            esc_len += iesc[ISO2022JP_CS_ASCII].esc_len;
        }
        return esc_len;
    }
    return 0;
}