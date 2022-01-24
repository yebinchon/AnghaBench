#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ mmap; scalar_t__ hashmap_key; TYPE_1__* server; TYPE_7__* journal; } ;
typedef  TYPE_2__ Writer ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int /*<<< orphan*/  writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static Writer* FUNC6(Writer *w) {
        if (!w)
                return NULL;

        if (w->journal) {
                FUNC3("Closing journal file %s.", w->journal->path);
                FUNC2(w->journal);
        }

        if (w->server && w->hashmap_key)
                FUNC1(w->server->writers, w->hashmap_key);

        FUNC0(w->hashmap_key);

        if (w->mmap)
                FUNC5(w->mmap);

        return FUNC4(w);
}