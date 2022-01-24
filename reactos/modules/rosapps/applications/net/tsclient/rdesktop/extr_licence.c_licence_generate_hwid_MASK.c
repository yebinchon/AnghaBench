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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {int /*<<< orphan*/  licence_hostname; } ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 scalar_t__ LICENCE_HWID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(RDPCLIENT * This, uint8 * hwid)
{
	FUNC0(hwid, 2);
	FUNC1((char *) (hwid + 4), This->licence_hostname, LICENCE_HWID_SIZE - 4);
}