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
struct TYPE_4__ {char const* message; } ;
typedef  TYPE_1__ sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_ERROR_ACCESS_DENIED ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int) ; 

const char *FUNC2(const sd_bus_error *e, int error) {

        if (e) {
                /* Sometimes, the D-Bus server is a little bit too verbose with
                 * its error messages, so let's override them here */
                if (FUNC0(e, SD_BUS_ERROR_ACCESS_DENIED))
                        return "Access denied";

                if (e->message)
                        return e->message;
        }

        if (error < 0)
                error = -error;

        return FUNC1(error);
}