#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_16__ {int /*<<< orphan*/  devices; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_17__ {int /*<<< orphan*/  active; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ SessionDevice ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_DEVICE_IS_TAKEN ; 
 int /*<<< orphan*/  BUS_ERROR_NOT_IN_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,TYPE_2__**) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;
        uint32_t major, minor;
        SessionDevice *sd;
        dev_t dev;
        int r;

        FUNC2(message);
        FUNC2(s);

        r = FUNC7(message, "uu", &major, &minor);
        if (r < 0)
                return r;

        if (!FUNC0(major) || !FUNC1(minor))
                return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Device major/minor is not valid.");

        if (!FUNC12(s, FUNC6(message)))
                return FUNC5(error, BUS_ERROR_NOT_IN_CONTROL, "You are not in control of this session");

        dev = FUNC4(major, minor);
        sd = FUNC3(s->devices, &dev);
        if (sd)
                /* We don't allow retrieving a device multiple times.
                 * The related ReleaseDevice call is not ref-counted.
                 * The caller should use dup() if it requires more
                 * than one fd (it would be functionally
                 * equivalent). */
                return FUNC5(error, BUS_ERROR_DEVICE_IS_TAKEN, "Device already taken");

        r = FUNC10(s, dev, true, &sd);
        if (r < 0)
                return r;

        r = FUNC11(sd);
        if (r < 0)
                goto error;

        r = FUNC8(message, "hb", sd->fd, !sd->active);
        if (r < 0)
                goto error;

        FUNC13(s);
        return 1;

error:
        FUNC9(sd);
        return r;
}