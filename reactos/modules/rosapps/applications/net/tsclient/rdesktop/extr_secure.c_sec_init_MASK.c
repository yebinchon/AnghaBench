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
typedef  int uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  licence_issued; } ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 int SEC_ENCRYPT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sec_hdr ; 

STREAM
FUNC2(RDPCLIENT * This, uint32 flags, int maxlen)
{
	int hdrlen;
	STREAM s;

	if (!This->licence_issued)
		hdrlen = (flags & SEC_ENCRYPT) ? 12 : 4;
	else
		hdrlen = (flags & SEC_ENCRYPT) ? 12 : 0;
	s = FUNC0(This, maxlen + hdrlen);

	if(s == NULL)
		return s;

	FUNC1(s, sec_hdr, hdrlen);

	return s;
}