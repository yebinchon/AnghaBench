#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_3__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ BOUNDS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC3(STREAM s, BOUNDS * bounds)
{
	uint8 present;

	FUNC0(s, present);

	if (present & 1)
		FUNC1(s, &bounds->left, False);
	else if (present & 16)
		FUNC1(s, &bounds->left, True);

	if (present & 2)
		FUNC1(s, &bounds->top, False);
	else if (present & 32)
		FUNC1(s, &bounds->top, True);

	if (present & 4)
		FUNC1(s, &bounds->right, False);
	else if (present & 64)
		FUNC1(s, &bounds->right, True);

	if (present & 8)
		FUNC1(s, &bounds->bottom, False);
	else if (present & 128)
		FUNC1(s, &bounds->bottom, True);

	return FUNC2(s);
}