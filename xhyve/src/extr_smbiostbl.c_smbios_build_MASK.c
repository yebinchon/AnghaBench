#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct smbios_structure {int dummy; } ;
struct smbios_entry_point {int dummy; } ;
typedef  int (* initializer_func_t ) (struct smbios_structure*,char const**,char*,char**,scalar_t__*,scalar_t__*) ;
struct TYPE_2__ {char** strings; int (* initializer ) (struct smbios_structure*,char const**,char*,char**,scalar_t__*,scalar_t__*) ;struct smbios_structure* entry; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ SMBIOS_BASE ; 
 int SMBIOS_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  guest_himem ; 
 int /*<<< orphan*/  guest_lomem ; 
 char* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smbios_entry_point*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct smbios_entry_point*,scalar_t__) ; 
 TYPE_1__* smbios_template ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (struct smbios_structure*,char const**,char*,char**,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(void)
{
	struct smbios_entry_point *smbios_ep;
	uint16_t n;
	uint16_t maxssize;
	char *curaddr, *startaddr, *ststartaddr;
	int i;
	int err;

	guest_lomem = FUNC7();
	guest_himem = FUNC6();

	startaddr = FUNC2(SMBIOS_BASE, SMBIOS_MAX_LENGTH);
	if (startaddr == NULL) {
		FUNC1(stderr, "smbios table requires mapped mem\n");
		return (ENOMEM);
	}

	curaddr = startaddr;

	smbios_ep = (struct smbios_entry_point *)curaddr;
	FUNC4(smbios_ep, SMBIOS_BASE +
	    sizeof(struct smbios_entry_point));
	curaddr += sizeof(struct smbios_entry_point);
	ststartaddr = curaddr;

	n = 0;
	maxssize = 0;
	for (i = 0; smbios_template[i].entry != NULL; i++) {
		struct smbios_structure	*entry;
		const char **strings;
		initializer_func_t initializer;
		char *endaddr;
		uint16_t size;

		entry = smbios_template[i].entry;
		strings = smbios_template[i].strings;
		initializer = smbios_template[i].initializer;

		err = (*initializer)(entry, strings, curaddr, &endaddr,
		    &n, &size);
		if (err != 0)
			return (err);

		if (size > maxssize)
			maxssize = size;

		curaddr = endaddr;
	}

	FUNC0(curaddr - startaddr < SMBIOS_MAX_LENGTH);
	FUNC3(smbios_ep, ((uint16_t) (curaddr - ststartaddr)), n,
		maxssize);

	return (0);
}