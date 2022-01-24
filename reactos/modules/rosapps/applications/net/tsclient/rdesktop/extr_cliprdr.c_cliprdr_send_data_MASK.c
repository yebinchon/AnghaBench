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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPRDR_DATA_RESPONSE ; 
 int /*<<< orphan*/  CLIPRDR_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(RDPCLIENT * This, uint8 * data, uint32 length)
{
	FUNC0(("cliprdr_send_data\n"));
	FUNC1(This, CLIPRDR_DATA_RESPONSE, CLIPRDR_RESPONSE, data, length);
}