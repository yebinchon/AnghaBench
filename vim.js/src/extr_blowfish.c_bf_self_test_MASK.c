#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_4__ {int /*<<< orphan*/  uc; } ;
typedef  TYPE_1__ block8 ;
typedef  int UINT32_T ;
struct TYPE_5__ {int keysum; int /*<<< orphan*/  badcryptxt; int /*<<< orphan*/  cryptxt; int /*<<< orphan*/  plaintxt; int /*<<< orphan*/  salt; scalar_t__ password; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FAIL ; 
 int OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* bf_test_data ; 
 int /*<<< orphan*/  ipa ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pax ; 
 int /*<<< orphan*/  sbi ; 
 int /*<<< orphan*/  sbx ; 

__attribute__((used)) static int
FUNC9()
{
    int    i, bn;
    int    err = 0;
    block8 bk;
    UINT32_T ui = 0xffffffffUL;

    /* We can't simply use sizeof(UINT32_T), it would generate a compiler
     * warning. */
    if (ui != 0xffffffffUL || ui + 1 != 0) {
	err++;
	FUNC1(FUNC3("E820: sizeof(uint32_t) != 4"));
    }

    if (!FUNC4(ipa, sbi, 0x6ffa520a))
	err++;

    bn = FUNC0(bf_test_data);
    for (i = 0; i < bn; i++)
    {
	FUNC6((char_u *)(bf_test_data[i].password),
		    bf_test_data[i].salt,
		    (int)FUNC2(bf_test_data[i].salt));
	if (!FUNC4(pax, sbx, bf_test_data[i].keysum))
	    err++;

	/* Don't modify bf_test_data[i].plaintxt, self test is idempotent. */
	FUNC8(bk.uc, bf_test_data[i].plaintxt, 8);
	FUNC5(bk.uc);
	if (FUNC7(bk.uc, bf_test_data[i].cryptxt, 8) != 0)
	{
	    if (err == 0 && FUNC7(bk.uc, bf_test_data[i].badcryptxt, 8) == 0)
		FUNC1(FUNC3("E817: Blowfish big/little endian use wrong"));
	    err++;
	}
    }

    return err > 0 ? FAIL : OK;
}