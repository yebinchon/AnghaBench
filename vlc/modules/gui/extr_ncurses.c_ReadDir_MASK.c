#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dir_entry_t {int /*<<< orphan*/ * path; int /*<<< orphan*/  file; } ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_8__ {scalar_t__ n_dir_entries; int /*<<< orphan*/  dir_entries; int /*<<< orphan*/ * current_dir; int /*<<< orphan*/  show_hidden_files; } ;
typedef  TYPE_2__ intf_sys_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct dir_entry_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  comdir_entries ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct dir_entry_t*) ; 
 struct dir_entry_t* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;

    if (!sys->current_dir || !*sys->current_dir) {
        FUNC6(intf, "no current dir set");
        return;
    }

    DIR *current_dir = FUNC12(sys->current_dir);
    if (!current_dir) {
        FUNC7(intf, "cannot open directory `%s' (%s)", sys->current_dir,
                 FUNC14(errno));
        return;
    }

    FUNC0(sys);

    const char *entry;
    while ((entry = FUNC13(current_dir))) {
        if (!sys->show_hidden_files && *entry == '.' && FUNC9(entry, ".."))
            continue;

        struct dir_entry_t *dir_entry = FUNC5(sizeof *dir_entry);
        if (FUNC11(dir_entry == NULL))
            continue;

        dir_entry->file = FUNC1(sys->current_dir, entry);
        dir_entry->path = FUNC10(entry);
        if (FUNC11(dir_entry->path == NULL))
        {
            FUNC4(dir_entry);
            continue;
        }
        FUNC2(sys->n_dir_entries, sys->dir_entries, dir_entry);
        continue;
    }

    FUNC3(current_dir);

    if (sys->n_dir_entries > 0)
        FUNC8(sys->dir_entries, sys->n_dir_entries,
              sizeof(struct dir_entry_t*), &comdir_entries);
}