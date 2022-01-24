#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ck_length; TYPE_2__* ck_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  wk_refcnt; TYPE_1__ wk_key; } ;
typedef  TYPE_2__ dsl_wrapping_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(dsl_wrapping_key_t *wkey)
{
	FUNC0(FUNC4(&wkey->wk_refcnt));

	if (wkey->wk_key.ck_data) {
		FUNC2(wkey->wk_key.ck_data,
		    FUNC1(wkey->wk_key.ck_length));
		FUNC3(wkey->wk_key.ck_data,
		    FUNC1(wkey->wk_key.ck_length));
	}

	FUNC5(&wkey->wk_refcnt);
	FUNC3(wkey, sizeof (dsl_wrapping_key_t));
}