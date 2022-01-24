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
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 

double FUNC5(double lon1d, double lat1d, double lon2d, double lat2d) {
    double lat1r, lon1r, lat2r, lon2r, u, v;
    lat1r = FUNC2(lat1d);
    lon1r = FUNC2(lon1d);
    lat2r = FUNC2(lat2d);
    lon2r = FUNC2(lon2d);
    u = FUNC3((lat2r - lat1r) / 2);
    v = FUNC3((lon2r - lon1r) / 2);
    return 2.0 * EARTH_RADIUS_IN_METERS *
           FUNC0(FUNC4(u * u + FUNC1(lat1r) * FUNC1(lat2r) * v * v));
}