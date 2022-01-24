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
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  modifier; int /*<<< orphan*/  mode; int /*<<< orphan*/  mtime; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafDirent ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (json_t *array, SeafDirent *dirent)
{
    json_t *object;

    object = FUNC2 ();
    FUNC3 (object, "mode", dirent->mode);
    FUNC4 (object, "id", dirent->id);
    FUNC4 (object, "name", dirent->name);
    FUNC3 (object, "mtime", dirent->mtime);
    if (FUNC0(dirent->mode)) {
        FUNC4 (object, "modifier", dirent->modifier);
        FUNC3 (object, "size", dirent->size);
    }

    FUNC1 (array, object);
}