#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  fraction; } ;
struct TYPE_10__ {int stereo; int single; int jsbound; scalar_t__ mode; int mode_ext; int II_sblimit; scalar_t__ (* synth_stereo ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ;scalar_t__ (* synth_mono ) (int /*<<< orphan*/ ,TYPE_2__*) ;TYPE_1__ layer2; } ;
typedef  TYPE_2__ mpg123_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int /*<<< orphan*/ **,int*,TYPE_2__*,int) ; 
 scalar_t__ MPG_MD_JOINT_STEREO ; 
 size_t SBLIMIT ; 
 int SCALE_BLOCK ; 
 int SINGLE_LEFT ; 
 int SINGLE_MIX ; 
 int SINGLE_STEREO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ ** fraction ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC7(mpg123_handle *fr)
{
	int clip=0;
	int i,j;
	int stereo = fr->stereo;
	/* pick_table clears unused subbands */
	/* replacement for real fraction[2][4][SBLIMIT], needs alignment. */
	FUNC4 (*fraction)[4][SBLIMIT] = fr->layer2.fraction;
	unsigned int bit_alloc[64];
	int scale[192];
	int single = fr->single;

	FUNC0(fr);
	fr->jsbound = (fr->mode == MPG_MD_JOINT_STEREO) ? (fr->mode_ext<<2)+4 : fr->II_sblimit;

	if(fr->jsbound > fr->II_sblimit)
	{
		FUNC3(stderr, "Truncating stereo boundary to sideband limit.\n");
		fr->jsbound=fr->II_sblimit;
	}

	/* TODO: What happens with mono mixing, actually? */
	if(stereo == 1 || single == SINGLE_MIX) /* also, mix not really handled */
	single = SINGLE_LEFT;

	FUNC1(bit_alloc, scale, fr);

	for(i=0;i<SCALE_BLOCK;i++)
	{
		FUNC2(bit_alloc,fraction,scale,fr,i>>2);
		for(j=0;j<3;j++) 
		{
			if(single != SINGLE_STEREO)
			clip += (fr->synth_mono)(fraction[single][j], fr);
			else
			clip += (fr->synth_stereo)(fraction[0][j], fraction[1][j], fr);
		}
	}

	return clip;
}