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
struct block_device {int /*<<< orphan*/  bd_dev; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 struct block_device* FUNC3 (char const*) ; 
 unsigned int zvol_major ; 

__attribute__((used)) static boolean_t
FUNC4(const char *device)
{
	struct block_device *bdev;
	unsigned int major;

	bdev = FUNC3(device);
	if (FUNC0(bdev))
		return (B_FALSE);

	major = FUNC1(bdev->bd_dev);
	FUNC2(bdev);

	if (major == zvol_major)
		return (B_TRUE);

	return (B_FALSE);
}