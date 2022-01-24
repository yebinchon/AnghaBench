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
typedef  int /*<<< orphan*/  zfs_keyformat_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint64_t ;
struct TYPE_5__ {void* ck_data; int /*<<< orphan*/  ck_length; int /*<<< orphan*/  ck_format; } ;
struct TYPE_6__ {void* wk_iters; void* wk_salt; int /*<<< orphan*/  wk_keyformat; int /*<<< orphan*/  wk_refcnt; TYPE_1__ wk_key; } ;
typedef  TYPE_2__ dsl_wrapping_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRYPTO_KEY_RAW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int) ; 
 int WRAPPING_KEY_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(uint8_t *wkeydata, zfs_keyformat_t keyformat,
    uint64_t salt, uint64_t iters, dsl_wrapping_key_t **wkey_out)
{
	int ret;
	dsl_wrapping_key_t *wkey;

	/* allocate the wrapping key */
	wkey = FUNC4(sizeof (dsl_wrapping_key_t), KM_SLEEP);
	if (!wkey)
		return (FUNC1(ENOMEM));

	/* allocate and initialize the underlying crypto key */
	wkey->wk_key.ck_data = FUNC4(WRAPPING_KEY_LEN, KM_SLEEP);
	if (!wkey->wk_key.ck_data) {
		ret = ENOMEM;
		goto error;
	}

	wkey->wk_key.ck_format = CRYPTO_KEY_RAW;
	wkey->wk_key.ck_length = FUNC0(WRAPPING_KEY_LEN);
	FUNC2(wkeydata, wkey->wk_key.ck_data, WRAPPING_KEY_LEN);

	/* initialize the rest of the struct */
	FUNC5(&wkey->wk_refcnt);
	wkey->wk_keyformat = keyformat;
	wkey->wk_salt = salt;
	wkey->wk_iters = iters;

	*wkey_out = wkey;
	return (0);

error:
	FUNC3(wkey);

	*wkey_out = NULL;
	return (ret);
}