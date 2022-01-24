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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  arc_buf_hdr_t ;
typedef  scalar_t__ arc_buf_contents_t ;

/* Variables and functions */
 scalar_t__ ARC_BUFC_DATA ; 
 scalar_t__ ARC_BUFC_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC5(arc_buf_hdr_t *hdr, uint64_t size, void *tag)
{
	arc_buf_contents_t type = FUNC1(hdr);

	FUNC2(hdr, size, tag);
	if (type == ARC_BUFC_METADATA) {
		return (FUNC3(size));
	} else {
		FUNC0(type == ARC_BUFC_DATA);
		return (FUNC4(size));
	}
}