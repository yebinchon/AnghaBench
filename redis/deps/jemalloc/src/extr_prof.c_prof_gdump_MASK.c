#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_3__ {int enq_gdump; scalar_t__ enq; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int DUMP_FILENAME_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* opt_prof_prefix ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  prof_booted ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prof_dump_seq_mtx ; 
 int /*<<< orphan*/  prof_dump_useq ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(tsdn_t *tsdn) {
	tsd_t *tsd;
	prof_tdata_t *tdata;

	FUNC0(config_prof);

	if (!prof_booted || FUNC8(tsdn) || !FUNC3()) {
		return;
	}
	tsd = FUNC9(tsdn);
	if (FUNC7(tsd) > 0) {
		return;
	}

	tdata = FUNC6(tsd, false);
	if (tdata == NULL) {
		return;
	}
	if (tdata->enq) {
		tdata->enq_gdump = true;
		return;
	}

	if (opt_prof_prefix[0] != '\0') {
		char filename[DUMP_FILENAME_BUFSIZE];
		FUNC1(tsdn, &prof_dump_seq_mtx);
		FUNC5(filename, 'u', prof_dump_useq);
		prof_dump_useq++;
		FUNC2(tsdn, &prof_dump_seq_mtx);
		FUNC4(tsd, false, filename, false);
	}
}