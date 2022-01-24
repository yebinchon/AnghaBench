#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rc; void* userdata; int /*<<< orphan*/  const* cbs; int /*<<< orphan*/  options; int /*<<< orphan*/ * item; } ;
typedef  TYPE_1__ input_preparser_req_t ;
typedef  int /*<<< orphan*/  input_preparser_callbacks_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_meta_request_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static input_preparser_req_t *FUNC4(input_item_t *item,
                                        input_item_meta_request_option_t options,
                                        const input_preparser_callbacks_t *cbs,
                                        void *userdata)
{
    input_preparser_req_t *req = FUNC1(sizeof(*req));
    if (FUNC2(!req))
        return NULL;

    req->item = item;
    req->options = options;
    req->cbs = cbs;
    req->userdata = userdata;
    FUNC3(&req->rc);

    FUNC0(item);

    return req;
}