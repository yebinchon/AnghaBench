#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_5__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_4__ {char* name; char* local_path; int /*<<< orphan*/  device_type; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_TYPE_DISK ; 
 size_t RDPDR_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

int
FUNC6(RDPCLIENT * This, uint32 * id, char *optarg)
{
	char *pos = optarg;
	char *pos2;
	int count = 0;

	/* skip the first colon */
	optarg++;
	while ((pos = FUNC1(optarg, ',')) && *id < RDPDR_MAX_DEVICES)
	{
		pos2 = FUNC1(optarg, '=');

		FUNC4(This->rdpdr_device[*id].name, optarg, sizeof(This->rdpdr_device[*id].name) - 1);
		if (FUNC3(optarg) > (sizeof(This->rdpdr_device[*id].name) - 1))
			FUNC0(stderr, "share name %s truncated to %s\n", optarg,
				This->rdpdr_device[*id].name);

		This->rdpdr_device[*id].local_path = (char *) FUNC5(FUNC3(pos2) + 1);
		FUNC2(This->rdpdr_device[*id].local_path, pos2);
		This->rdpdr_device[*id].device_type = DEVICE_TYPE_DISK;
		count++;
		(*id)++;

		optarg = pos;
	}
	return count;
}