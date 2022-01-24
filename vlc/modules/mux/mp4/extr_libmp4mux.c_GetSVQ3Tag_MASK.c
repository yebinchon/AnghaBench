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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static bo_t *FUNC7(const uint8_t *p_extra, size_t i_extra)
{
    bo_t *smi = FUNC5("SMI ");
    if(!smi)
        return NULL;

    if (i_extra > 0x4e) {
        const uint8_t *p_end = &p_extra[i_extra];
        const uint8_t *p     = &p_extra[0x46];

        while (p + 8 < p_end) {
            int i_size = FUNC0(p);
            if (i_size <= 1) /* FIXME handle 1 as long size */
                break;
            if (!FUNC6((const char *)&p[4], "SMI ", 4)) {
                FUNC4(smi, p_end - p - 8, &p[8]);
                return smi;
            }
            p += i_size;
        }
    }

    /* Create a dummy one in fallback */
    FUNC3(smi, "SEQH");
    FUNC1(smi, 0x5);
    FUNC1(smi, 0xe2c0211d);
    FUNC2(smi, 0xc0);

    return smi;
}