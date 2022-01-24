#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int va_mode; int va_uid; int va_gid; int va_rdev; int va_nodeid; int /*<<< orphan*/  va_type; scalar_t__ va_mask; } ;
typedef  TYPE_1__ vattr_t ;
typedef  scalar_t__ uint_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uid_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3(vattr_t *vap, uint64_t mask, uint64_t mode,
    uint64_t uid, uint64_t gid, uint64_t rdev, uint64_t nodeid)
{
	FUNC2(vap, sizeof (*vap));
	vap->va_mask = (uint_t)mask;
	vap->va_type = FUNC0(mode);
	vap->va_mode = mode;
	vap->va_uid = (uid_t)(FUNC1(uid)) ? -1 : uid;
	vap->va_gid = (gid_t)(FUNC1(gid)) ? -1 : gid;
	vap->va_rdev = rdev;
	vap->va_nodeid = nodeid;
}