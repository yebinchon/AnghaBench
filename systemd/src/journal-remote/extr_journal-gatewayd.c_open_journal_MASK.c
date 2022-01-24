#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ journal; } ;
typedef  TYPE_1__ RequestMeta ;

/* Variables and functions */
 int SD_JOURNAL_LOCAL_ONLY ; 
 int SD_JOURNAL_SYSTEM ; 
 scalar_t__ arg_directory ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (scalar_t__*,int) ; 
 int FUNC2 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(RequestMeta *m) {
        FUNC0(m);

        if (m->journal)
                return 0;

        if (arg_directory)
                return FUNC2(&m->journal, arg_directory, 0);
        else
                return FUNC1(&m->journal, SD_JOURNAL_LOCAL_ONLY|SD_JOURNAL_SYSTEM);
}