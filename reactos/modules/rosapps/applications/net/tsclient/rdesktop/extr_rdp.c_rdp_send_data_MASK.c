#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint16 ;
struct TYPE_13__ {int mcs_userid; scalar_t__ encryption; int /*<<< orphan*/  rdp_shareid; } ;
struct TYPE_12__ {scalar_t__ p; scalar_t__ end; } ;
typedef  TYPE_1__* STREAM ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int RDP_PDU_DATA ; 
 int /*<<< orphan*/  SEC_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  rdp_hdr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC6(RDPCLIENT * This, STREAM s, uint8 data_pdu_type)
{
	uint16 length;

	FUNC4(s, rdp_hdr);
	length = (uint16)(s->end - s->p);

	FUNC1(s, length);
	FUNC1(s, (RDP_PDU_DATA | 0x10));
	FUNC1(s, (This->mcs_userid + 1001));

	FUNC2(s, This->rdp_shareid);
	FUNC3(s, 0);	/* pad */
	FUNC3(s, 1);	/* streamid */
	FUNC1(s, (length - 14));
	FUNC3(s, data_pdu_type);
	FUNC3(s, 0);	/* compress_type */
	FUNC0(s, 0);	/* compress_len */

	return FUNC5(This, s, This->encryption ? SEC_ENCRYPT : 0);
}