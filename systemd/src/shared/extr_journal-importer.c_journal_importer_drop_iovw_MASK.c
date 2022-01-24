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
struct TYPE_3__ {size_t filled; size_t offset; size_t scanned; size_t size; char* buf; int /*<<< orphan*/  iovw; } ;
typedef  TYPE_1__ JournalImporter ;

/* Variables and functions */
 int LINE_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 char* FUNC4 (char*,size_t) ; 

void FUNC5(JournalImporter *imp) {
        size_t remain, target;

        /* This function drops processed data that along with the iovw that points at it */

        FUNC0(&imp->iovw, false);

        /* possibly reset buffer position */
        remain = imp->filled - imp->offset;

        if (remain == 0) /* no brainer */
                imp->offset = imp->scanned = imp->filled = 0;
        else if (imp->offset > imp->size - imp->filled &&
                 imp->offset > remain) {
                FUNC3(imp->buf, imp->buf + imp->offset, remain);
                imp->offset = imp->scanned = 0;
                imp->filled = remain;
        }

        target = imp->size;
        while (target > 16 * LINE_CHUNK && imp->filled < target / 2)
                target /= 2;
        if (target < imp->size) {
                char *tmp;

                tmp = FUNC4(imp->buf, target);
                if (!tmp)
                        FUNC2("Failed to reallocate buffer to (smaller) size %zu",
                                    target);
                else {
                        FUNC1("Reallocated buffer from %zu to %zu bytes",
                                  imp->size, target);
                        imp->buf = tmp;
                        imp->size = target;
                }
        }
}