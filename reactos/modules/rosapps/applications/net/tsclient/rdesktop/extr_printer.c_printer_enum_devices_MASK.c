#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_7__ {char* printer; char* driver; int /*<<< orphan*/  default_printer; } ;
struct TYPE_6__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_5__ {scalar_t__ device_type; char* name; void* pdevice_data; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  TYPE_3__ PRINTER ;

/* Variables and functions */
 scalar_t__ DEVICE_TYPE_PRINTER ; 
 int /*<<< orphan*/  False ; 
 int RDPDR_MAX_DEVICES ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 void* FUNC6 (int) ; 

int
FUNC7(RDPCLIENT * This, uint32 * id, char *optarg)
{
	PRINTER *pprinter_data;

	char *pos = optarg;
	char *pos2;
	int count = 0;
	int already = 0;

	/* we need to know how many printers we've already set up
	   supplied from other -r flags than this one. */
	while (count < *id)
	{
		if (This->rdpdr_device[count].device_type == DEVICE_TYPE_PRINTER)
			already++;
		count++;
	}

	count = 0;

	if (*optarg == ':')
		optarg++;

	while ((pos = FUNC1(optarg, ',')) && *id < RDPDR_MAX_DEVICES)
	{
		pprinter_data = (PRINTER *) FUNC6(sizeof(PRINTER));

		FUNC4(This->rdpdr_device[*id].name, "PRN");
		FUNC3(This->rdpdr_device[*id].name, FUNC0(already + count + 1, 10));

		/* first printer is set as default printer */
		if ((already + count) == 0)
			pprinter_data->default_printer = True;
		else
			pprinter_data->default_printer = False;

		pos2 = FUNC1(optarg, '=');
		if (*optarg == (char) 0x00)
			pprinter_data->printer = "mydeskjet";	/* set default */
		else
		{
			pprinter_data->printer = FUNC6(FUNC5(optarg) + 1);
			FUNC4(pprinter_data->printer, optarg);
		}

		if (!pos2 || (*pos2 == (char) 0x00))
			pprinter_data->driver = "HP Color LaserJet 8500 PS";	/* no printer driver supplied set default */
		else
		{
			pprinter_data->driver = FUNC6(FUNC5(pos2) + 1);
			FUNC4(pprinter_data->driver, pos2);
		}

		FUNC2("PRINTER %s to %s driver %s\n", This->rdpdr_device[*id].name,
		       pprinter_data->printer, pprinter_data->driver);
		This->rdpdr_device[*id].device_type = DEVICE_TYPE_PRINTER;
		This->rdpdr_device[*id].pdevice_data = (void *) pprinter_data;
		count++;
		(*id)++;

		optarg = pos;
	}
	return count;
}