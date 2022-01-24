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
typedef  int /*<<< orphan*/  zilog_t ;
typedef  char* u_longlong_t ;
struct TYPE_2__ {scalar_t__ lr_tdoid; scalar_t__ lr_sdoid; } ;
typedef  TYPE_1__ lr_rename_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int FUNC1 (char*) ; 
 char* tab_prefix ; 

__attribute__((used)) static void
FUNC2(zilog_t *zilog, int txtype, void *arg)
{
	lr_rename_t *lr = arg;
	char *snm = (char *)(lr + 1);
	char *tnm = snm + FUNC1(snm) + 1;

	(void) FUNC0("%ssdoid %llu, tdoid %llu\n", tab_prefix,
	    (u_longlong_t)lr->lr_sdoid, (u_longlong_t)lr->lr_tdoid);
	(void) FUNC0("%ssrc %s tgt %s\n", tab_prefix, snm, tnm);
}