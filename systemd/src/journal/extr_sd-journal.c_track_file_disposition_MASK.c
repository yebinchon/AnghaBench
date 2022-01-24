#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int has_runtime_files; int has_persistent_files; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ sd_journal ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(sd_journal *j, JournalFile *f) {
        FUNC0(j);
        FUNC0(f);

        if (!j->has_runtime_files && FUNC1(j, f->path, "/run"))
                j->has_runtime_files = true;
        else if (!j->has_persistent_files && FUNC1(j, f->path, "/var"))
                j->has_persistent_files = true;
}