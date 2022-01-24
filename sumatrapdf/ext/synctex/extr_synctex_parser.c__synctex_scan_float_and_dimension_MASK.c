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
typedef  scalar_t__ synctex_status_t ;
typedef  int /*<<< orphan*/ * synctex_scanner_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_NUMERIC ; 
 size_t SYNCTEX_BUFFER_MIN_SIZE ; 
 char* SYNCTEX_CUR ; 
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ; 
 scalar_t__ SYNCTEX_STATUS_EOF ; 
 scalar_t__ SYNCTEX_STATUS_ERROR ; 
 scalar_t__ SYNCTEX_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 float FUNC4 (char*,char**) ; 

synctex_status_t FUNC5(synctex_scanner_t scanner, float * value_ref) {
	synctex_status_t status = 0;
	char * endptr = NULL;
	float f = 0;
#ifdef HAVE_SETLOCALE
	char * loc = setlocale(LC_NUMERIC, NULL);
#endif
	size_t available = 0;
	if (NULL == scanner || NULL == value_ref) {
		return SYNCTEX_STATUS_BAD_ARGUMENT;
	}
	available = SYNCTEX_BUFFER_MIN_SIZE;
	status = FUNC0(scanner, &available);
	if (status<SYNCTEX_STATUS_EOF) {
		FUNC1("problem with float.");
		return status;
	}
#ifdef HAVE_SETLOCALE
	setlocale(LC_NUMERIC, "C");
#endif
	f = FUNC4(SYNCTEX_CUR,&endptr);
#ifdef HAVE_SETLOCALE
	setlocale(LC_NUMERIC, loc);
#endif
	if (endptr == SYNCTEX_CUR) {
		FUNC1("a float was expected.");
		return SYNCTEX_STATUS_ERROR;
	}
	SYNCTEX_CUR = endptr;
	if ((status = FUNC2(scanner,"in")) >= SYNCTEX_STATUS_OK) {
		f *= 72.27f*65536;
	} else if (status<SYNCTEX_STATUS_EOF) {
report_unit_error:
		FUNC1("problem with unit.");
		return status;
	} else if ((status = FUNC2(scanner,"cm")) >= SYNCTEX_STATUS_OK) {
		f *= 72.27f*65536/2.54f;
	} else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"mm")) >= SYNCTEX_STATUS_OK) {
		f *= 72.27f*65536/25.4f;
	} else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"pt")) >= SYNCTEX_STATUS_OK) {
		f *= 65536.0f;
	} else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"bp")) >= SYNCTEX_STATUS_OK) {
		f *= 72.27f/72*65536.0f;
	}  else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"pc")) >= SYNCTEX_STATUS_OK) {
		f *= 12.0*65536.0f;
	}  else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"sp")) >= SYNCTEX_STATUS_OK) {
		f *= 1.0f;
	}  else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"dd")) >= SYNCTEX_STATUS_OK) {
		f *= 1238.0f/1157*65536.0f;
	}  else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"cc")) >= SYNCTEX_STATUS_OK) {
		f *= 14856.0f/1157*65536;
	} else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"nd")) >= SYNCTEX_STATUS_OK) {
		f *= 685.0f/642*65536;
	}  else if (status<0) {
		goto report_unit_error;
	} else if ((status = FUNC2(scanner,"nc")) >= SYNCTEX_STATUS_OK) {
		f *= 1370.0f/107*65536;
	} else if (status<0) {
		goto report_unit_error;
	}
	*value_ref = f;
	return SYNCTEX_STATUS_OK;
}