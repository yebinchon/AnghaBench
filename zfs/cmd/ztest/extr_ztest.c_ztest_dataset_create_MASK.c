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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_crypto_params_t ;
struct TYPE_2__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DCP_CMD_NONE ; 
 int /*<<< orphan*/  DMU_OST_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRAPPING_KEY_LEN ; 
 unsigned long long ZFS_KEYFORMAT_RAW ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_ITERS ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_SALT ; 
 int /*<<< orphan*/  ZFS_PROP_SYNC ; 
 int /*<<< orphan*/  ZFS_SYNC_ALWAYS ; 
 int ZIO_CRYPT_AES_128_CCM ; 
 int ZIO_CRYPT_FUNCTIONS ; 
 int ZIO_CRYPT_ON ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_objset_create_cb ; 
 TYPE_1__ ztest_opts ; 
 int FUNC14 (int) ; 
 scalar_t__ ztest_wkeydata ; 

__attribute__((used)) static int
FUNC15(char *dsname)
{
	int err;
	uint64_t rand;
	dsl_crypto_params_t *dcp = NULL;

	/*
	 * 50% of the time, we create encrypted datasets
	 * using a random cipher suite and a hard-coded
	 * wrapping key.
	 */
	rand = FUNC14(2);
	if (rand != 0) {
		nvlist_t *crypto_args = FUNC8();
		nvlist_t *props = FUNC8();

		/* slight bias towards the default cipher suite */
		rand = FUNC14(ZIO_CRYPT_FUNCTIONS);
		if (rand < ZIO_CRYPT_AES_128_CCM)
			rand = ZIO_CRYPT_ON;

		FUNC6(props,
		    FUNC12(ZFS_PROP_ENCRYPTION), rand);
		FUNC7(crypto_args, "wkeydata",
		    (uint8_t *)ztest_wkeydata, WRAPPING_KEY_LEN);

		/*
		 * These parameters aren't really used by the kernel. They
		 * are simply stored so that userspace knows how to load
		 * the wrapping key.
		 */
		FUNC6(props,
		    FUNC12(ZFS_PROP_KEYFORMAT), ZFS_KEYFORMAT_RAW);
		FUNC5(props,
		    FUNC12(ZFS_PROP_KEYLOCATION), "prompt");
		FUNC6(props,
		    FUNC12(ZFS_PROP_PBKDF2_SALT), 0ULL);
		FUNC6(props,
		    FUNC12(ZFS_PROP_PBKDF2_ITERS), 0ULL);

		FUNC0(FUNC3(DCP_CMD_NONE, props,
		    crypto_args, &dcp));

		/*
		 * Cycle through all available encryption implementations
		 * to verify interoperability.
		 */
		FUNC0(FUNC10("cycle"));
		FUNC0(FUNC1("cycle"));

		FUNC9(crypto_args);
		FUNC9(props);
	}

	err = FUNC2(dsname, DMU_OST_OTHER, 0, dcp,
	    ztest_objset_create_cb, NULL);
	FUNC4(dcp, !!err);

	rand = FUNC14(100);
	if (err || rand < 80)
		return (err);

	if (ztest_opts.zo_verbose >= 5)
		(void) FUNC11("Setting dataset %s to sync always\n", dsname);
	return (FUNC13(dsname, ZFS_PROP_SYNC,
	    ZFS_SYNC_ALWAYS, B_FALSE));
}