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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPRDR_DATA_REQUEST ; 
 int /*<<< orphan*/  CLIPRDR_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC3(RDPCLIENT * This, uint32 format)
{
	uint8 buffer[4];

	FUNC0(("cliprdr_send_data_request\n"));
	FUNC1(buffer, format);
	FUNC2(This, CLIPRDR_DATA_REQUEST, CLIPRDR_REQUEST, buffer, sizeof(buffer));
}