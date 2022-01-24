#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  version; } ;
struct TYPE_9__ {TYPE_2__* subdir; } ;
typedef  TYPE_1__ ChangeSetDirent ;
typedef  TYPE_2__ ChangeSetDir ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SHA1 ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ChangeSetDir *
FUNC3 (ChangeSetDir *parent, const char *dname)
{
    ChangeSetDirent *dent;

    dent = FUNC2 (EMPTY_SHA1, S_IFDIR, dname, 0, NULL, 0);
    dent->subdir = FUNC1 (parent->version, EMPTY_SHA1, NULL);
    FUNC0 (parent, dent);

    return dent->subdir;
}