#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  scalar_t__ uint32 ;
typedef  int uint16 ;
struct stream {int* p; int* data; int size; int* end; int* rdp_hdr; } ;
struct TYPE_9__ {scalar_t__ hist; struct stream ns; } ;
struct TYPE_10__ {int disconnect_reason; TYPE_1__ mppc_dict; } ;
typedef  struct stream* STREAM ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
#define  RDP_DATA_PDU_BELL 134 
#define  RDP_DATA_PDU_CONTROL 133 
#define  RDP_DATA_PDU_DISCONNECT 132 
#define  RDP_DATA_PDU_LOGON 131 
#define  RDP_DATA_PDU_POINTER 130 
#define  RDP_DATA_PDU_SYNCHRONISE 129 
#define  RDP_DATA_PDU_UPDATE 128 
 int RDP_MPPC_COMPRESSED ; 
 scalar_t__ RDP_MPPC_DICT_SIZE ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct stream*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stream*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stream*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,unsigned char*,scalar_t__) ; 
 int FUNC7 (TYPE_2__*,int*,int,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct stream*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct stream*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct stream*) ; 
 void* FUNC11 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

__attribute__((used)) static BOOL
FUNC14(RDPCLIENT * This, STREAM s, uint32 * ext_disc_reason)
{
	uint8 data_pdu_type;
	uint8 ctype;
	uint16 clen;
	uint32 len;

	uint32 roff, rlen;

	struct stream *ns = &(This->mppc_dict.ns);

	FUNC5(s, 6);	/* shareid, pad, streamid */
	FUNC3(s, len);
	FUNC4(s, data_pdu_type);
	FUNC4(s, ctype);
	FUNC3(s, clen);
	clen -= 18;

	if (ctype & RDP_MPPC_COMPRESSED)
	{
		void * p;

		if (len > RDP_MPPC_DICT_SIZE)
			FUNC1("error decompressed packet size exceeds max\n");
		if (FUNC7(This, s->p, clen, ctype, &roff, &rlen) == -1)
			FUNC1("error while decompressing packet\n");

		/* len -= 18; */

		/* allocate memory and copy the uncompressed data into the temporary stream */
		p = FUNC11(ns->data, rlen);

		if(p == NULL)
		{
			This->disconnect_reason = 262;
			return True;
		}

		ns->data = (uint8 *) p;

		FUNC6((ns->data), (unsigned char *) (This->mppc_dict.hist + roff), rlen);

		ns->size = rlen;
		ns->end = (ns->data + ns->size);
		ns->p = ns->data;
		ns->rdp_hdr = ns->p;

		s = ns;
	}

	switch (data_pdu_type)
	{
		case RDP_DATA_PDU_UPDATE:
			FUNC10(This, s);
			break;

		case RDP_DATA_PDU_CONTROL:
			FUNC0(("Received Control PDU\n"));
			break;

		case RDP_DATA_PDU_SYNCHRONISE:
			FUNC0(("Received Sync PDU\n"));
			break;

		case RDP_DATA_PDU_POINTER:
			FUNC9(This, s);
			break;

		case RDP_DATA_PDU_BELL:
			FUNC12(This);
			break;

		case RDP_DATA_PDU_LOGON:
			FUNC0(("Received Logon PDU\n"));
			FUNC2(This);
			/* User logged on */
			break;

		case RDP_DATA_PDU_DISCONNECT:
			FUNC8(s, ext_disc_reason);

			/* We used to return true and disconnect immediately here, but
			 * Windows Vista sends a disconnect PDU with reason 0 when
			 * reconnecting to a disconnected session, and MSTSC doesn't
			 * drop the connection.  I think we should just save the status.
			 */
			break;

		default:
			FUNC13("data PDU %d\n", data_pdu_type);
	}
	return False;
}