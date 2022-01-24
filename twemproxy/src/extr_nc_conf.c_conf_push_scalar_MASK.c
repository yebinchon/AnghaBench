#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct string {int dummy; } ;
struct TYPE_5__ {scalar_t__ length; int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_2__ scalar; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct conf {int /*<<< orphan*/  arg; TYPE_3__ event; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ NC_ENOMEM ; 
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct string* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct string*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct string*) ; 

__attribute__((used)) static rstatus_t
FUNC5(struct conf *cf)
{
    rstatus_t status;
    struct string *value;
    uint8_t *scalar;
    uint32_t scalar_len;

    scalar = cf->event.data.scalar.value;
    scalar_len = (uint32_t)cf->event.data.scalar.length;
    if (scalar_len == 0) {
        return NC_ERROR;
    }

    FUNC2(LOG_VVERB, "push '%.*s'", scalar_len, scalar);

    value = FUNC1(&cf->arg);
    if (value == NULL) {
        return NC_ENOMEM;
    }
    FUNC4(value);

    status = FUNC3(value, scalar, scalar_len);
    if (status != NC_OK) {
        FUNC0(&cf->arg);
        return status;
    }

    return NC_OK;
}