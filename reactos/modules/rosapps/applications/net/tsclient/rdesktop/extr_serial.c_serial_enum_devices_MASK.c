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
typedef  size_t uint32 ;
struct termios {int dummy; } ;
struct TYPE_7__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {struct termios* pold_termios; struct termios* ptermios; } ;
struct TYPE_5__ {char* name; char* local_path; void* pdevice_data; int /*<<< orphan*/  device_type; } ;
typedef  TYPE_2__ SERIAL_DEVICE ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_TYPE_SERIAL ; 
 size_t RDPDR_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct termios*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 

int
FUNC7(RDPCLIENT * This, uint32 * id, char *optarg)
{
	SERIAL_DEVICE *pser_inf;

	char *pos = optarg;
	char *pos2;
	int count = 0;

	/* skip the first colon */
	optarg++;
	while ((pos = FUNC1(optarg, ',')) && *id < RDPDR_MAX_DEVICES)
	{
		/* Init data structures for device */
		pser_inf = (SERIAL_DEVICE *) FUNC6(sizeof(SERIAL_DEVICE));
		pser_inf->ptermios = (struct termios *) FUNC6(sizeof(struct termios));
		FUNC0(pser_inf->ptermios, 0, sizeof(struct termios));
		pser_inf->pold_termios = (struct termios *) FUNC6(sizeof(struct termios));
		FUNC0(pser_inf->pold_termios, 0, sizeof(struct termios));

		pos2 = FUNC1(optarg, '=');
		FUNC3(This->rdpdr_device[*id].name, optarg);

		FUNC5(This->rdpdr_device[*id].name);

		This->rdpdr_device[*id].local_path = FUNC6(FUNC4(pos2) + 1);
		FUNC3(This->rdpdr_device[*id].local_path, pos2);
		FUNC2("SERIAL %s to %s\n", This->rdpdr_device[*id].name,
		       This->rdpdr_device[*id].local_path);
		/* set device type */
		This->rdpdr_device[*id].device_type = DEVICE_TYPE_SERIAL;
		This->rdpdr_device[*id].pdevice_data = (void *) pser_inf;
		count++;
		(*id)++;

		optarg = pos;
	}
	return count;
}