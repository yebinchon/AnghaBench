#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mon; int tm_year; scalar_t__ tm_mday; } ;
typedef  scalar_t__ off_t ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ start; scalar_t__ starthi; void* date; void* adate; void* cdate; void* time; void* ctime; scalar_t__ ctime_ms; int /*<<< orphan*/  attr; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  DOS_FS ;
typedef  TYPE_1__ DIR_ENT ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_VOLUME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,TYPE_1__*) ; 
 void* FUNC3 (unsigned short) ; 
 struct tm* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(DOS_FS * fs, char *label)
{
    time_t now = FUNC6(NULL);
    struct tm *mtime = FUNC4(&now);
    off_t offset;
    int created;
    DIR_ENT de;

    created = 0;
    offset = FUNC1(fs, &de);
    if (offset == 0) {
	created = 1;
	offset = FUNC0(fs, &de, label, 0);
    }
    FUNC5(de.name, label, 11);
    de.time = FUNC3((unsigned short)((mtime->tm_sec >> 1) +
				       (mtime->tm_min << 5) +
				       (mtime->tm_hour << 11)));
    de.date = FUNC3((unsigned short)(mtime->tm_mday +
				       ((mtime->tm_mon + 1) << 5) +
				       ((mtime->tm_year - 80) << 9)));
    if (created) {
	de.attr = ATTR_VOLUME;
	de.ctime_ms = 0;
	de.ctime = de.time;
	de.cdate = de.date;
	de.adate = de.date;
	de.starthi = 0;
	de.start = 0;
	de.size = 0;
    }

    FUNC2(offset, sizeof(DIR_ENT), &de);
}