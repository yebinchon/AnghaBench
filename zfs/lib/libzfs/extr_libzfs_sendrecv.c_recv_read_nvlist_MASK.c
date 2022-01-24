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
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(libzfs_handle_t *hdl, int fd, int len, nvlist_t **nvp,
    boolean_t byteswap, zio_cksum_t *zc)
{
	char *buf;
	int err;

	buf = FUNC4(hdl, len);
	if (buf == NULL)
		return (ENOMEM);

	err = FUNC3(hdl, fd, buf, len, byteswap, zc);
	if (err != 0) {
		FUNC1(buf);
		return (err);
	}

	err = FUNC2(buf, len, nvp, 0);
	FUNC1(buf);
	if (err != 0) {
		FUNC5(hdl, FUNC0(TEXT_DOMAIN, "invalid "
		    "stream (malformed nvlist)"));
		return (EINVAL);
	}
	return (0);
}