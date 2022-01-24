#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {scalar_t__ Length; scalar_t__ MaximumLength; char* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_6__ {scalar_t__ dest_Length; scalar_t__ dest_MaximumLength; int dest_buf_size; scalar_t__ src_Length; scalar_t__ src_MaximumLength; int src_buf_size; scalar_t__ result; scalar_t__ res_Length; scalar_t__ res_MaximumLength; scalar_t__ res_buf; int /*<<< orphan*/  res_buf_size; int /*<<< orphan*/ * src_buf; int /*<<< orphan*/ * dest_buf; } ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 unsigned int NB_APP_USTR2STR ; 
 TYPE_4__* app_ustr2str ; 
 scalar_t__ FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(void)
{
    WCHAR dest_buf[257];
    WCHAR src_buf[257];
    UNICODE_STRING dest_str;
    UNICODE_STRING src_str;
    NTSTATUS result;
    unsigned int test_num;

    for (test_num = 0; test_num < NB_APP_USTR2STR; test_num++) {
	dest_str.Length        = app_ustr2str[test_num].dest_Length;
	dest_str.MaximumLength = app_ustr2str[test_num].dest_MaximumLength;
	if (app_ustr2str[test_num].dest_buf != NULL) {
	    FUNC1(dest_buf, app_ustr2str[test_num].dest_buf, app_ustr2str[test_num].dest_buf_size);
	    dest_buf[app_ustr2str[test_num].dest_buf_size/sizeof(WCHAR)] = '\0';
	    dest_str.Buffer = dest_buf;
	} else {
	    dest_str.Buffer = NULL;
	}
	src_str.Length         = app_ustr2str[test_num].src_Length;
	src_str.MaximumLength  = app_ustr2str[test_num].src_MaximumLength;
	if (app_ustr2str[test_num].src_buf != NULL) {
	    FUNC1(src_buf, app_ustr2str[test_num].src_buf, app_ustr2str[test_num].src_buf_size);
	    src_buf[app_ustr2str[test_num].src_buf_size/sizeof(WCHAR)] = '\0';
	    src_str.Buffer = src_buf;
	} else {
	    src_str.Buffer = NULL;
	}
	result = FUNC3(&dest_str, &src_str);
	FUNC2(result == app_ustr2str[test_num].result,
           "(test %d): RtlAppendStringToString(dest, src) has result %x, expected %x\n",
	   test_num, result, app_ustr2str[test_num].result);
	FUNC2(dest_str.Length == app_ustr2str[test_num].res_Length,
	   "(test %d): RtlAppendStringToString(dest, src) dest has Length %d, expected %d\n",
	   test_num, dest_str.Length, app_ustr2str[test_num].res_Length);
	FUNC2(dest_str.MaximumLength == app_ustr2str[test_num].res_MaximumLength,
	   "(test %d): RtlAppendStringToString(dest, src) dest has MaximumLength %d, expected %d\n",
	   test_num, dest_str.MaximumLength, app_ustr2str[test_num].res_MaximumLength);
	if (dest_str.Buffer == dest_buf) {
	    FUNC2(FUNC0(dest_buf, app_ustr2str[test_num].res_buf, app_ustr2str[test_num].res_buf_size) == 0,
	       "(test %d): RtlAppendStringToString(dest, src) has dest \"%s\" expected \"%s\"\n",
	       test_num, (char *) dest_buf, app_ustr2str[test_num].res_buf);
	} else {
	    FUNC2(dest_str.Buffer == (WCHAR *) app_ustr2str[test_num].res_buf,
	       "(test %d): RtlAppendStringToString(dest, src) dest has Buffer %p expected %p\n",
	       test_num, dest_str.Buffer, app_ustr2str[test_num].res_buf);
	}
    }
}