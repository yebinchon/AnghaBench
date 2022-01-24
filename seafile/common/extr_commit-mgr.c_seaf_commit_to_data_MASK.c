#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

char *
FUNC6 (SeafCommit *commit, gsize *len)
{
    json_t *object;
    char *json_data;
    char *ret;

    object = FUNC0 (commit);

    json_data = FUNC4 (object, 0);
    *len = FUNC5 (json_data);
    FUNC3 (object);

    ret = FUNC2 (json_data);
    FUNC1 (json_data);
    return ret;
}