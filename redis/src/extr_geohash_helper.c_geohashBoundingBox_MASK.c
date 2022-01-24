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

/* Variables and functions */
 double EARTH_RADIUS_IN_METERS ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 double FUNC2 (double) ; 

int FUNC3(double longitude, double latitude, double radius_meters,
                       double *bounds) {
    if (!bounds) return 0;

    bounds[0] = longitude - FUNC2(radius_meters/EARTH_RADIUS_IN_METERS/FUNC0(FUNC1(latitude)));
    bounds[2] = longitude + FUNC2(radius_meters/EARTH_RADIUS_IN_METERS/FUNC0(FUNC1(latitude)));
    bounds[1] = latitude - FUNC2(radius_meters/EARTH_RADIUS_IN_METERS);
    bounds[3] = latitude + FUNC2(radius_meters/EARTH_RADIUS_IN_METERS);
    return 1;
}