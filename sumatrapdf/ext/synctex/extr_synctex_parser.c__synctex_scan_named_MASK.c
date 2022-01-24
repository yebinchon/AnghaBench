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
typedef  scalar_t__ (* synctex_decoder_t ) (int /*<<< orphan*/ *,void*) ;

/* Variables and functions */
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ; 
 scalar_t__ SYNCTEX_STATUS_NOT_OK ; 
 scalar_t__ SYNCTEX_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*) ; 

synctex_status_t FUNC3(synctex_scanner_t scanner,const char * name,void * value_ref,synctex_decoder_t decoder) {
	synctex_status_t status = 0;
	if (NULL == scanner || NULL == name || NULL == value_ref || NULL == decoder) {
		return SYNCTEX_STATUS_BAD_ARGUMENT;
	}
not_found:
	status = FUNC0(scanner,name);
	if (status<SYNCTEX_STATUS_NOT_OK) {
		return status;
	} else if (status == SYNCTEX_STATUS_NOT_OK) {
		status = FUNC1(scanner);
		if (status<SYNCTEX_STATUS_OK) {
			return status;
		}
		goto not_found;
	}
	/*  A line is found, scan the value */
	return (*decoder)(scanner,value_ref);
}