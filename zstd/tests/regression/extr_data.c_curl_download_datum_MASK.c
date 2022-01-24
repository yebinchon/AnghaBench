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
struct TYPE_4__ {int /*<<< orphan*/  dict; int /*<<< orphan*/  type; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ data_t ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  data_type_file ; 

__attribute__((used)) static int FUNC2(CURL* curl, data_t const* data) {
    int ret;
    ret = FUNC0(curl, &data->data, data->type);
    if (ret != 0)
        return ret;
    if (FUNC1(data)) {
        ret = FUNC0(curl, &data->dict, data_type_file);
        if (ret != 0)
            return ret;
    }
    return ret;
}