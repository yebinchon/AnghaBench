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
 int SOLAR_TIME_MAX ; 
 size_t SOLAR_TIME_MIDNIGHT ; 
 size_t SOLAR_TIME_NOON ; 
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double* time_angle ; 
 double FUNC4 (double,double,double,double,double) ; 
 double FUNC5 (double,double) ; 

void
FUNC6(double date, double lat, double lon, double *table)
{
	/* Calculate Julian day */
	double jd = FUNC2(date);

	/* Calculate Julian day number */
	double jdn = FUNC3(jd);
	double t = FUNC1(jdn);

	/* Calculate apparent solar noon */
	double sol_noon = FUNC5(t, lon);
	double j_noon = jdn - 0.5 + sol_noon/1440.0;
	double t_noon = FUNC1(j_noon);
	table[SOLAR_TIME_NOON] = FUNC0(j_noon);

	/* Calculate solar midnight */
	table[SOLAR_TIME_MIDNIGHT] = FUNC0(j_noon + 0.5);

	/* Calulate absoute time of other phenomena */
	for (int i = 2; i < SOLAR_TIME_MAX; i++) {
		double angle = time_angle[i];
		double offset =
			FUNC4(t, t_noon, lat, lon, angle);
		table[i] = FUNC0(jdn - 0.5 + offset/1440.0);
	}
}