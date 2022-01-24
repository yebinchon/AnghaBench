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
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  iso_hdr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

STREAM
FUNC2(RDPCLIENT * This, int length)
{
	STREAM s;

	s = FUNC1(This, length + 7);

	if(s == NULL)
		return NULL;

	FUNC0(s, iso_hdr, 7);

	return s;
}