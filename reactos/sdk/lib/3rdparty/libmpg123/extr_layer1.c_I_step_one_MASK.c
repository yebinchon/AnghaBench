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
struct TYPE_5__ {int stereo; int jsbound; } ;
typedef  TYPE_1__ mpg123_handle ;

/* Variables and functions */
 int SBLIMIT ; 
 scalar_t__ FUNC0 (TYPE_1__*,unsigned int*,unsigned int*) ; 
 void* FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(unsigned int balloc[], unsigned int scale_index[2][SBLIMIT],mpg123_handle *fr)
{
	unsigned int *ba=balloc;
	unsigned int *sca = (unsigned int *) scale_index;

	if(fr->stereo == 2)
	{
		int i;
		int jsbound = fr->jsbound;
		for(i=0;i<jsbound;i++)
		{
			*ba++ = FUNC1(fr, 4);
			*ba++ = FUNC1(fr, 4);
		}
		for(i=jsbound;i<SBLIMIT;i++) *ba++ = FUNC1(fr, 4);

		if(FUNC0(fr, balloc, ba)) return -1;

		ba = balloc;

		for(i=0;i<jsbound;i++)
		{
			if ((*ba++))
				*sca++ = FUNC1(fr, 6);
			if ((*ba++))
				*sca++ = FUNC1(fr, 6);
		}
		for (i=jsbound;i<SBLIMIT;i++)
		if((*ba++))
		{
			*sca++ =  FUNC1(fr, 6);
			*sca++ =  FUNC1(fr, 6);
		}
	}
	else
	{
		int i;
		for(i=0;i<SBLIMIT;i++) *ba++ = FUNC1(fr, 4);

		if(FUNC0(fr, balloc, ba)) return -1;

		ba = balloc;
		for (i=0;i<SBLIMIT;i++)
		if ((*ba++))
		*sca++ = FUNC1(fr, 6);
	}

	return 0;
}