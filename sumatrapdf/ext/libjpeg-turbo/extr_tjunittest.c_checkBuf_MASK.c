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
struct TYPE_3__ {int num; int denom; } ;
typedef  TYPE_1__ tjscalingfactor ;

/* Variables and functions */
 int TJFLAG_BOTTOMUP ; 
 int TJSAMP_GRAY ; 
 int* alphaOffset ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int* tjBlueOffset ; 
 int* tjGreenOffset ; 
 int* tjPixelSize ; 
 int* tjRedOffset ; 

int FUNC4(unsigned char *buf, int w, int h, int pf, int subsamp,
	tjscalingfactor sf, int flags)
{
	int roffset=tjRedOffset[pf];
	int goffset=tjGreenOffset[pf];
	int boffset=tjBlueOffset[pf];
	int aoffset=alphaOffset[pf];
	int ps=tjPixelSize[pf];
	int index, row, col, retval=1;
	int halfway=16*sf.num/sf.denom;
	int blocksize=8*sf.num/sf.denom;

	for(row=0; row<h; row++)
	{
		for(col=0; col<w; col++)
		{
			unsigned char r, g, b, a;
			if(flags&TJFLAG_BOTTOMUP) index=(h-row-1)*w+col;
			else index=row*w+col;
			r=buf[index*ps+roffset];
			g=buf[index*ps+goffset];
			b=buf[index*ps+boffset];
			a=aoffset>=0? buf[index*ps+aoffset]:0xFF;
			if(((row/blocksize)+(col/blocksize))%2==0)
			{
				if(row<halfway)
				{
					FUNC2(r);  FUNC2(g);  FUNC2(b);
				}
				else
				{
					FUNC1(r);  FUNC1(g);  FUNC1(b);
				}
			}
			else
			{
				if(subsamp==TJSAMP_GRAY)
				{
					if(row<halfway)
					{
						FUNC0(r, 76);  FUNC0(g, 76);  FUNC0(b, 76);
					}
					else
					{
						FUNC0(r, 226);  FUNC0(g, 226);  FUNC0(b, 226);
					}
				}
				else
				{
					if(row<halfway)
					{
						FUNC2(r);  FUNC1(g);  FUNC1(b);
					}
					else
					{
						FUNC2(r);  FUNC2(g);  FUNC1(b);
					}
				}
			}
			FUNC2(a);
		}
	}

	bailout:
	if(retval==0)
	{
		for(row=0; row<h; row++)
		{
			for(col=0; col<w; col++)
			{
				FUNC3("%.3d/%.3d/%.3d ", buf[(row*w+col)*ps+roffset],
					buf[(row*w+col)*ps+goffset], buf[(row*w+col)*ps+boffset]);
			}
			FUNC3("\n");
		}
	}
	return retval;
}