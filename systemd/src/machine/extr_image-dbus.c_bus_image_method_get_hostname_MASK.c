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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_3__ {int /*<<< orphan*/  hostname; int /*<<< orphan*/  metadata_valid; } ;
typedef  TYPE_1__ Image ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC3(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Image *image = userdata;
        int r;

        if (!image->metadata_valid) {
                r = FUNC0(image);
                if (r < 0)
                        return FUNC1(error, r, "Failed to read image metadata: %m");
        }

        return FUNC2(message, "s", image->hostname);
}