#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long rate; } ;
struct TYPE_7__ {unsigned long ntom_step; int /*<<< orphan*/  num; int /*<<< orphan*/ * ntom_val; void* err; TYPE_1__ af; } ;
typedef  TYPE_2__ mpg123_handle ;

/* Variables and functions */
 void* MPG123_BAD_RATE ; 
 scalar_t__ NOQUIET ; 
 scalar_t__ NTOM_MAX ; 
 long NTOM_MAX_FREQ ; 
 long NTOM_MUL ; 
 scalar_t__ VERBOSE2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long,long) ; 
 long FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(mpg123_handle *fr)
{
	long m,n;
	m = FUNC3(fr);
	n = fr->af.rate;
	if(VERBOSE2)
		FUNC2(stderr,"Init rate converter: %ld->%ld\n",m,n);

	if(n > NTOM_MAX_FREQ || m > NTOM_MAX_FREQ || m <= 0 || n <= 0) {
		if(NOQUIET) FUNC0("NtoM converter: illegal rates");
		fr->err = MPG123_BAD_RATE;
		return -1;
	}

	n *= NTOM_MUL;
	fr->ntom_step = (unsigned long) n / m;

	if(fr->ntom_step > (unsigned long)NTOM_MAX*NTOM_MUL) {
		if(NOQUIET) FUNC1("max. 1:%i conversion allowed (%lu vs %lu)!", NTOM_MAX, fr->ntom_step, (unsigned long)8*NTOM_MUL);
		fr->err = MPG123_BAD_RATE;
		return -1;
	}

	fr->ntom_val[0] = fr->ntom_val[1] = FUNC4(fr, fr->num);
	return 0;
}