#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ synctex_status_t ;
typedef  TYPE_1__* synctex_scanner_t ;
typedef  int /*<<< orphan*/  synctex_decoder_t ;
struct TYPE_6__ {int /*<<< orphan*/  pre_y_offset; int /*<<< orphan*/  pre_x_offset; int /*<<< orphan*/  pre_unit; int /*<<< orphan*/  pre_magnification; int /*<<< orphan*/  output_fmt; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ; 
 scalar_t__ SYNCTEX_STATUS_NOT_OK ; 
 scalar_t__ SYNCTEX_STATUS_OK ; 
 int /*<<< orphan*/  _synctex_decode_int ; 
 int /*<<< orphan*/  _synctex_decode_string ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

synctex_status_t FUNC3(synctex_scanner_t scanner) {
	synctex_status_t status = 0;
	if (NULL == scanner) {
		return SYNCTEX_STATUS_BAD_ARGUMENT;
	}
	status = FUNC2(scanner,"SyncTeX Version:",&(scanner->version),(synctex_decoder_t)&_synctex_decode_int);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC0(scanner);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	/*  Read all the input records */
	do {
		status = FUNC1(scanner);
		if (status<SYNCTEX_STATUS_NOT_OK) {
			return status;
		}
	} while(status == SYNCTEX_STATUS_OK);
	/*  the loop exits when status == SYNCTEX_STATUS_NOT_OK */
	/*  Now read all the required settings. */
	status = FUNC2(scanner,"Output:",&(scanner->output_fmt),(synctex_decoder_t)&_synctex_decode_string);
	if (status<SYNCTEX_STATUS_NOT_OK) {
		return status;
	}
	status = FUNC0(scanner);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC2(scanner,"Magnification:",&(scanner->pre_magnification),(synctex_decoder_t)&_synctex_decode_int);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC0(scanner);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC2(scanner,"Unit:",&(scanner->pre_unit),(synctex_decoder_t)&_synctex_decode_int);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC0(scanner);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC2(scanner,"X Offset:",&(scanner->pre_x_offset),(synctex_decoder_t)&_synctex_decode_int);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC0(scanner);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	status = FUNC2(scanner,"Y Offset:",&(scanner->pre_y_offset),(synctex_decoder_t)&_synctex_decode_int);
	if (status<SYNCTEX_STATUS_OK) {
		return status;
	}
	return FUNC0(scanner);
}