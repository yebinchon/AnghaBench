#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fd; int /*<<< orphan*/  iovw; scalar_t__ buf; scalar_t__ name; int /*<<< orphan*/  passive_fd; } ;
typedef  TYPE_1__ JournalImporter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(JournalImporter *imp) {
        if (imp->fd >= 0 && !imp->passive_fd) {
                FUNC2("Closing %s (fd=%d)", imp->name ?: "importer", imp->fd);
                FUNC3(imp->fd);
        }

        FUNC0(imp->name);
        FUNC0(imp->buf);
        FUNC1(&imp->iovw, false);
}