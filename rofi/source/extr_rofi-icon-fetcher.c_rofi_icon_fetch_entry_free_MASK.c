#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gpointer ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int /*<<< orphan*/  sizes; int /*<<< orphan*/  surface; struct TYPE_8__* name; } ;
typedef  TYPE_1__ IconFetcherNameEntry ;
typedef  TYPE_1__ IconFetcherEntry ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5 ( gpointer data )
{
    IconFetcherNameEntry *entry = (IconFetcherNameEntry *) data;

    // Free name/key.
    FUNC1 ( entry->name );

    for ( GList *iter = FUNC2 ( entry->sizes ); iter; iter = FUNC4 ( iter ) ) {
        IconFetcherEntry *sentry = (IconFetcherEntry *) ( iter->data );

        FUNC0 ( sentry->surface );
        FUNC1 ( sentry );
    }

    FUNC3 ( entry->sizes );
    FUNC1 ( entry );
}