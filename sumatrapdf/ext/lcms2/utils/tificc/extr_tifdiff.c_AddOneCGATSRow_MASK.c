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
typedef  int /*<<< orphan*/  cmsHANDLE ;
struct TYPE_5__ {double Min; double Peak; } ;
typedef  TYPE_1__* LPSTAT ;

/* Variables and functions */
 double FUNC0 (TYPE_1__*) ; 
 double FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,double) ; 

__attribute__((used)) static
void FUNC4(cmsHANDLE hIT8, char *Name, LPSTAT st)
{

    double Per100 = 100.0 * ((255.0 - FUNC0(st)) / 255.0);

    FUNC2(NULL, hIT8,    Name, "SAMPLE_ID", Name);
    FUNC3(NULL, hIT8, Name, "PER100_EQUAL", Per100);
    FUNC3(NULL, hIT8, Name, "MEAN_DE", FUNC0(st));
    FUNC3(NULL, hIT8, Name, "STDEV_DE", FUNC1(st));
    FUNC3(NULL, hIT8, Name, "MIN_DE", st ->Min);
    FUNC3(NULL, hIT8, Name, "MAX_DE", st ->Peak);

}