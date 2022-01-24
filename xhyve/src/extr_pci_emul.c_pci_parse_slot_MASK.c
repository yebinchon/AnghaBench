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
struct slotinfo {TYPE_1__* si_funcs; } ;
struct businfo {struct slotinfo* slotinfo; } ;
struct TYPE_2__ {char* fi_name; char* fi_param; } ;

/* Variables and functions */
 int MAXBUSES ; 
 int MAXFUNCS ; 
 int MAXSLOTS ; 
 struct businfo* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct businfo** pci_businfo ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*) ; 

int
FUNC8(char *opt)
{
	struct businfo *bi;
	struct slotinfo *si;
	char *emul, *config, *str, *cp;
	int error, bnum, snum, fnum;

	error = -1;
	str = FUNC7(opt);

	emul = config = NULL;
	if ((cp = FUNC6(str, ',')) != NULL) {
		*cp = '\0';
		emul = cp + 1;
		if ((cp = FUNC6(emul, ',')) != NULL) {
			*cp = '\0';
			config = cp + 1;
		}
	} else {
		FUNC4(opt);
		goto done;
	}

	/* <bus>:<slot>:<func> */
	if (FUNC5(str, "%d:%d:%d", &bnum, &snum, &fnum) != 3) {
		bnum = 0;
		/* <slot>:<func> */
		if (FUNC5(str, "%d:%d", &snum, &fnum) != 2) {
			fnum = 0;
			/* <slot> */
			if (FUNC5(str, "%d", &snum) != 1) {
				snum = -1;
			}
		}
	}

	if (bnum < 0 || bnum >= MAXBUSES || snum < 0 || snum >= MAXSLOTS ||
	    fnum < 0 || fnum >= MAXFUNCS) {
		FUNC4(opt);
		goto done;
	}

	if (pci_businfo[bnum] == NULL)
		pci_businfo[bnum] = FUNC0(1, sizeof(struct businfo));

	bi = pci_businfo[bnum];
	si = &bi->slotinfo[snum];

	if (si->si_funcs[fnum].fi_name != NULL) {
		FUNC1(stderr, "pci slot %d:%d already occupied!\n",
			snum, fnum);
		goto done;
	}

	if (FUNC3(emul) == NULL) {
		FUNC1(stderr, "pci slot %d:%d: unknown device \"%s\"\n",
			snum, fnum, emul);
		goto done;
	}

	error = 0;
	si->si_funcs[fnum].fi_name = emul;
	si->si_funcs[fnum].fi_param = config;

done:
	if (error)
		FUNC2(str);

	return (error);
}