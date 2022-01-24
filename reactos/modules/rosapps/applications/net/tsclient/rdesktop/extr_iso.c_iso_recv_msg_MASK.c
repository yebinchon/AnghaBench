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
typedef  int uint8 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int ISO_PDU_DT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static STREAM
FUNC5(RDPCLIENT * This, uint8 * code, uint8 * rdpver)
{
	STREAM s;
	uint16 length;
	uint8 version;

	s = FUNC4(This, NULL, 4);
	if (s == NULL)
		return NULL;
	FUNC1(s, version);
	if (rdpver != NULL)
		*rdpver = version;
	if (version == 3)
	{
		FUNC2(s, 1);	/* pad */
		FUNC0(s, length);
	}
	else
	{
		FUNC1(s, length);
		if (length & 0x80)
		{
			length &= ~0x80;
			FUNC3(s, length);
		}
	}
	s = FUNC4(This, s, length - 4);
	if (s == NULL)
		return NULL;
	if (version != 3)
		return s;
	FUNC2(s, 1);	/* hdrlen */
	FUNC1(s, *code);
	if (*code == ISO_PDU_DT)
	{
		FUNC2(s, 1);	/* eot */
		return s;
	}
	FUNC2(s, 5);	/* dst_ref, src_ref, class */
	return s;
}