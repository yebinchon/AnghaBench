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
struct TYPE_4__ {int /*<<< orphan*/  device_tree; int /*<<< orphan*/  initrd; int /*<<< orphan*/  efi; int /*<<< orphan*/  kernel; int /*<<< orphan*/  options; int /*<<< orphan*/  architecture; int /*<<< orphan*/  machine_id; int /*<<< orphan*/  version; int /*<<< orphan*/  show_title; int /*<<< orphan*/  title; int /*<<< orphan*/  root; int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ BootEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(BootEntry *entry) {
        FUNC0(entry);

        FUNC1(entry->id);
        FUNC1(entry->path);
        FUNC1(entry->root);
        FUNC1(entry->title);
        FUNC1(entry->show_title);
        FUNC1(entry->version);
        FUNC1(entry->machine_id);
        FUNC1(entry->architecture);
        FUNC2(entry->options);
        FUNC1(entry->kernel);
        FUNC1(entry->efi);
        FUNC2(entry->initrd);
        FUNC1(entry->device_tree);
}