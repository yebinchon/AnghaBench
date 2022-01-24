#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_5__ {TYPE_1__* data; struct TYPE_5__* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  token; int /*<<< orphan*/  repo_id; } ;
typedef  TYPE_1__ HttpFolderPermReq ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static char *
FUNC9 (GList *requests)
{
    GList *ptr;
    HttpFolderPermReq *req;
    json_t *object, *array;
    char *req_str = NULL;

    array = FUNC0 ();

    for (ptr = requests; ptr; ptr = ptr->next) {
        req = ptr->data;

        object = FUNC5 ();
        FUNC6 (object, "repo_id", FUNC7(req->repo_id));
        FUNC6 (object, "token", FUNC7(req->token));
        FUNC6 (object, "ts", FUNC4(req->timestamp));

        FUNC1 (array, object);
    }

    req_str = FUNC3 (array, 0);
    if (!req_str) {
        FUNC8 ("Faile to json_dumps.\n");
    }

    FUNC2 (array);
    return req_str;
}