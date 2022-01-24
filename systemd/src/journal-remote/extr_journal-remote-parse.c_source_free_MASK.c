#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  n_ref; } ;
struct TYPE_5__ {int /*<<< orphan*/  buffer_event; int /*<<< orphan*/  event; TYPE_2__* writer; int /*<<< orphan*/  importer; } ;
typedef  TYPE_1__ RemoteSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(RemoteSource *source) {
        if (!source)
                return;

        FUNC1(&source->importer);

        FUNC2("Writer ref count %i", source->writer->n_ref);
        FUNC4(source->writer);

        FUNC3(source->event);
        FUNC3(source->buffer_event);

        FUNC0(source);
}