#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8 ;
typedef  int uint32 ;
struct TYPE_13__ {int bloblen; char* blob; int /*<<< orphan*/  printer; int /*<<< orphan*/  driver; int /*<<< orphan*/  default_printer; } ;
struct TYPE_11__ {int /*<<< orphan*/  channel; } ;
struct TYPE_12__ {int num_devices; TYPE_2__ rdpdr; TYPE_1__* rdpdr_device; } ;
struct TYPE_10__ {int device_type; char* name; scalar_t__ pdevice_data; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  TYPE_4__ PRINTER ;

/* Variables and functions */
#define  DEVICE_TYPE_PRINTER 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(RDPCLIENT * This)
{

	uint8 magic[4] = "rDAD";
	uint32 driverlen, printerlen, bloblen;
	int i;
	STREAM s;
	PRINTER *printerinfo;

	s = FUNC1(This, This->rdpdr.channel, FUNC0(This));
	FUNC5(s, magic, 4);
	FUNC4(s, This->num_devices);

	for (i = 0; i < This->num_devices; i++)
	{
		FUNC4(s, This->rdpdr_device[i].device_type);
		FUNC4(s, i);	/* RDP Device ID */
		/* Is it possible to use share names longer than 8 chars?
		   /astrand */
		FUNC6(s, This->rdpdr_device[i].name, 8);

		switch (This->rdpdr_device[i].device_type)
		{
			case DEVICE_TYPE_PRINTER:
				printerinfo = (PRINTER *) This->rdpdr_device[i].pdevice_data;

				driverlen = 2 * FUNC10(printerinfo->driver) + 2;
				printerlen = 2 * FUNC10(printerinfo->printer) + 2;
				bloblen = printerinfo->bloblen;

				FUNC4(s, 24 + driverlen + printerlen + bloblen);	/* length of extra info */
				FUNC4(s, printerinfo->default_printer ? 2 : 0);
				FUNC7(s, 8);	/* unknown */
				FUNC4(s, driverlen);
				FUNC4(s, printerlen);
				FUNC4(s, bloblen);
				FUNC8(This, s, printerinfo->driver, driverlen - 2);
				FUNC8(This, s, printerinfo->printer, printerlen - 2);
				FUNC5(s, printerinfo->blob, bloblen);

				if (printerinfo->blob)
					FUNC11(printerinfo->blob);	/* Blob is sent twice if reconnecting */
				break;
			default:
				FUNC3(s, 0);
		}
	}
#if 0
	out_uint32_le(s, 0x20);	/* Device type 0x20 - smart card */
	out_uint32_le(s, 0);
	out_uint8p(s, "SCARD", 5);
	out_uint8s(s, 3);
	out_uint32(s, 0);
#endif

	FUNC9(s);
	FUNC2(This, s, This->rdpdr.channel);
}