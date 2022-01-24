#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cb_data ;
struct TYPE_10__ {scalar_t__ data; struct TYPE_10__* next; } ;
struct TYPE_9__ {struct TYPE_9__* host; TYPE_3__* results; int /*<<< orphan*/  user_data; int /*<<< orphan*/  (* callback ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  success; } ;
struct TYPE_8__ {TYPE_3__* results; int /*<<< orphan*/  success; } ;
typedef  TYPE_1__ HttpFolderPerms ;
typedef  int /*<<< orphan*/  HttpFolderPermRes ;
typedef  TYPE_2__ GetFolderPermsData ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (void *vdata)
{
    GetFolderPermsData *data = vdata;
    HttpFolderPerms cb_data;

    FUNC3 (&cb_data, 0, sizeof(cb_data));
    cb_data.success = data->success;
    cb_data.results = data->results;

    data->callback (&cb_data, data->user_data);

    GList *ptr;
    for (ptr = data->results; ptr; ptr = ptr->next)
        FUNC2 ((HttpFolderPermRes *)ptr->data);
    FUNC1 (data->results);

    FUNC0 (data->host);
    FUNC0 (data);
}