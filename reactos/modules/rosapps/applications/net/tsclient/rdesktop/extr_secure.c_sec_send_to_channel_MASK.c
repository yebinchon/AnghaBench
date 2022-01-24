#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_11__ {int /*<<< orphan*/  rc4_key_len; int /*<<< orphan*/  sign_key; } ;
struct TYPE_13__ {TYPE_1__ secure; int /*<<< orphan*/  licence_issued; } ;
struct TYPE_12__ {int end; int p; } ;
typedef  TYPE_2__* STREAM ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SEC_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  sec_hdr ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

BOOL
FUNC7(RDPCLIENT * This, STREAM s, uint32 flags, uint16 channel)
{
	int datalen;

	FUNC4(s, sec_hdr);
	if (!This->licence_issued || (flags & SEC_ENCRYPT))
		FUNC3(s, flags);

	if (flags & SEC_ENCRYPT)
	{
		flags &= ~SEC_ENCRYPT;
		datalen = (int)(s->end - s->p - 8);

#if WITH_DEBUG
		DEBUG(("Sending encrypted packet:\n"));
		hexdump(s->p + 8, datalen);
#endif

		FUNC6(s->p, 8, This->secure.sign_key, This->secure.rc4_key_len, s->p + 8, datalen);
		FUNC5(This, s->p + 8, datalen);
	}

	return FUNC2(This, s, channel);
}