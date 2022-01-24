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
typedef  int /*<<< orphan*/  vtype_t ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VBLK ; 
 int /*<<< orphan*/  VCHR ; 
 int /*<<< orphan*/  VDIR ; 
 int /*<<< orphan*/  VFIFO ; 
 int /*<<< orphan*/  VLNK ; 
 int /*<<< orphan*/  VNON ; 
 int /*<<< orphan*/  VREG ; 
 int /*<<< orphan*/  VSOCK ; 

vtype_t
FUNC7(mode_t mode)
{
	if (FUNC5(mode))
		return (VREG);

	if (FUNC2(mode))
		return (VDIR);

	if (FUNC1(mode))
		return (VCHR);

	if (FUNC0(mode))
		return (VBLK);

	if (FUNC3(mode))
		return (VFIFO);

	if (FUNC4(mode))
		return (VLNK);

	if (FUNC6(mode))
		return (VSOCK);

	return (VNON);
}