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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_ITERS ; 
 scalar_t__ ZIO_CRYPT_OFF ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC4(nvlist_t *props)
{
	int ret;
	uint64_t intval;
	char *strval;

	ret = FUNC1(props,
	    FUNC3(ZFS_PROP_ENCRYPTION), &intval);
	if (ret == 0 && intval != ZIO_CRYPT_OFF)
		return (B_TRUE);

	ret = FUNC0(props,
	    FUNC3(ZFS_PROP_KEYLOCATION), &strval);
	if (ret == 0 && FUNC2(strval, "none") != 0)
		return (B_TRUE);

	ret = FUNC1(props,
	    FUNC3(ZFS_PROP_KEYFORMAT), &intval);
	if (ret == 0)
		return (B_TRUE);

	ret = FUNC1(props,
	    FUNC3(ZFS_PROP_PBKDF2_ITERS), &intval);
	if (ret == 0)
		return (B_TRUE);

	return (B_FALSE);
}