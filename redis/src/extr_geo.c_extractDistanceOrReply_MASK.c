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
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 double FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double*,char*) ; 

double FUNC3(client *c, robj **argv,
                                     double *conversion) {
    double distance;
    if (FUNC2(c, argv[0], &distance,
                                   "need numeric radius") != C_OK) {
        return -1;
    }

    if (distance < 0) {
        FUNC0(c,"radius cannot be negative");
        return -1;
    }

    double to_meters = FUNC1(c,argv[1]);
    if (to_meters < 0) {
        return -1;
    }

    if (conversion) *conversion = to_meters;
    return distance * to_meters;
}