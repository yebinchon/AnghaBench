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
struct ext2_xattr_handle {int count; int flags; struct ext2_xattr* attrs; } ;
struct ext2_xattr {char const* name; size_t value_len; int /*<<< orphan*/  value; } ;
typedef  scalar_t__ errcode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext2_xattr_handle*,int /*<<< orphan*/ ) ; 
 scalar_t__ EXT2_ET_EA_KEY_NOT_FOUND ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EA_HANDLE ; 
 int XATTR_HANDLE_FLAG_RAW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t,void**,size_t*) ; 
 scalar_t__ FUNC2 (size_t,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

errcode_t FUNC5(struct ext2_xattr_handle *h, const char *key,
			   void **value, size_t *value_len)
{
	struct ext2_xattr *x;
	char *val;
	errcode_t err;

	FUNC0(h, EXT2_ET_MAGIC_EA_HANDLE);
	for (x = h->attrs; x < h->attrs + h->count; x++) {
		if (FUNC4(x->name, key))
			continue;

		if (!(h->flags & XATTR_HANDLE_FLAG_RAW) &&
		    ((FUNC4(key, "system.posix_acl_default") == 0) ||
		     (FUNC4(key, "system.posix_acl_access") == 0))) {
			err = FUNC1(x->value, x->value_len,
							       value, value_len);
			return err;
		} else {
			err = FUNC2(x->value_len, &val);
			if (err)
				return err;
			FUNC3(val, x->value, x->value_len);
			*value = val;
			*value_len = x->value_len;
			return 0;
		}
	}

	return EXT2_ET_EA_KEY_NOT_FOUND;
}