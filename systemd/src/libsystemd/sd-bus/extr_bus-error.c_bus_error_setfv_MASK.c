#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_5__ {int _need_free; int /*<<< orphan*/  message; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ sd_bus_error ;

/* Variables and functions */
 TYPE_1__ BUS_ERROR_OOM ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char const*,int /*<<< orphan*/ ) ; 

int FUNC5(sd_bus_error *e, const char *name, const char *format, va_list ap) {

        if (!name)
                return 0;

        if (e) {
                FUNC0(!FUNC1(e), -EINVAL);

                e->name = FUNC3(name);
                if (!e->name) {
                        *e = BUS_ERROR_OOM;
                        return -ENOMEM;
                }

                /* If we hit OOM on formatting the pretty message, we ignore
                 * this, since we at least managed to write the error name */
                if (format)
                        (void) FUNC4((char**) &e->message, format, ap);

                e->_need_free = 1;
        }

        return -FUNC2(name);
}