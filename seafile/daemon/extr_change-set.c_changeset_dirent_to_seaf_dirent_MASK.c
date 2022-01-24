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
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  modifier; int /*<<< orphan*/  mtime; int /*<<< orphan*/  name; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafDirent ;
typedef  TYPE_1__ ChangeSetDirent ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SeafDirent *
FUNC1 (int version, ChangeSetDirent *dent)
{
    return FUNC0 (version, dent->id, dent->mode, dent->name,
                            dent->mtime, dent->modifier, dent->size);
}