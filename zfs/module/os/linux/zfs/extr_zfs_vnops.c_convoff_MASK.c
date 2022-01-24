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
struct TYPE_5__ {int /*<<< orphan*/  va_size; } ;
typedef  TYPE_1__ vattr_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  offset_t ;
struct TYPE_6__ {int l_whence; scalar_t__ l_start; } ;
typedef  TYPE_2__ flock64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct inode *ip, flock64_t *lckdat, int  whence, offset_t offset)
{
	vattr_t vap;
	int error;

	if ((lckdat->l_whence == SEEK_END) || (whence == SEEK_END)) {
		if ((error = FUNC2(ip, &vap, 0, FUNC0())))
			return (error);
	}

	switch (lckdat->l_whence) {
	case SEEK_CUR:
		lckdat->l_start += offset;
		break;
	case SEEK_END:
		lckdat->l_start += vap.va_size;
		/* FALLTHRU */
	case SEEK_SET:
		break;
	default:
		return (FUNC1(EINVAL));
	}

	if (lckdat->l_start < 0)
		return (FUNC1(EINVAL));

	switch (whence) {
	case SEEK_CUR:
		lckdat->l_start -= offset;
		break;
	case SEEK_END:
		lckdat->l_start -= vap.va_size;
		/* FALLTHRU */
	case SEEK_SET:
		break;
	default:
		return (FUNC1(EINVAL));
	}

	lckdat->l_whence = (short)whence;
	return (0);
}