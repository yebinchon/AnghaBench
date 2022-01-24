#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct gr_info_s {int scfsi; scalar_t__ part2_3_length; int big_values; scalar_t__ scalefac_compress; int block_type; int* table_select; int region1start; int region2start; void* count1table_select; void* scalefac_scale; void* preflag; void* mixed_block_flag; scalar_t__ pow2gain; scalar_t__* full_gain; } ;
struct III_sideinfo {int main_data_begin; int private_bits; TYPE_1__* ch; } ;
struct TYPE_10__ {size_t lsf; int bitreservoir; unsigned char* wordpointer; int ssize; int framesize; int gainpow2; scalar_t__ mpeg25; scalar_t__ error_protection; scalar_t__ num; int /*<<< orphan*/  to_ignore; } ;
typedef  TYPE_2__ mpg123_handle ;
struct TYPE_11__ {int* longIdx; } ;
struct TYPE_9__ {struct gr_info_s* gr; } ;

/* Variables and functions */
 scalar_t__ NOQUIET ; 
 int SINGLE_MIX ; 
 scalar_t__ VERBOSE2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int const) ; 
 TYPE_6__* bandInfo ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,long) ; 
 void* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (TYPE_2__*,int const) ; 
 int FUNC6 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(mpg123_handle *fr, struct III_sideinfo *si,int stereo, int ms_stereo,long sfreq,int single)
{
	int ch, gr;
	int powdiff = (single == SINGLE_MIX) ? 4 : 0;

	const int tabs[2][5] = { { 2,9,5,3,4 } , { 1,8,1,2,9 } };
	const int *tab = tabs[fr->lsf];

	si->main_data_begin = FUNC5(fr, tab[1]);

	if(si->main_data_begin > fr->bitreservoir)
	{
		if(!fr->to_ignore && VERBOSE2) FUNC3(stderr, "Note: missing %d bytes in bit reservoir for frame %li\n", (int)(si->main_data_begin - fr->bitreservoir), (long)fr->num);

		/*  overwrite main_data_begin for the really available bit reservoir */
		FUNC0(fr, tab[1]);
		if(fr->lsf == 0)
		{
			fr->wordpointer[0] = (unsigned char) (fr->bitreservoir >> 1);
			fr->wordpointer[1] = (unsigned char) ((fr->bitreservoir & 1) << 7);
		}
		else fr->wordpointer[0] = (unsigned char) fr->bitreservoir;

		/* zero "side-info" data for a silence-frame
		without touching audio data used as bit reservoir for following frame */
		FUNC7(fr->wordpointer+2, 0, fr->ssize-2);

		/* reread the new bit reservoir offset */
		si->main_data_begin = FUNC5(fr, tab[1]);
	}

	/* Keep track of the available data bytes for the bit reservoir.
	Think: Substract the 2 crc bytes in parser already? */
	fr->bitreservoir = fr->bitreservoir + fr->framesize - fr->ssize - (fr->error_protection ? 2 : 0);
	/* Limit the reservoir to the max for MPEG 1.0 or 2.x . */
	if(fr->bitreservoir > (unsigned int) (fr->lsf == 0 ? 511 : 255))
	fr->bitreservoir = (fr->lsf == 0 ? 511 : 255);

	/* Now back into less commented territory. It's code. It works. */

	if (stereo == 1)
	si->private_bits = FUNC6(fr, tab[2]);
	else 
	si->private_bits = FUNC6(fr, tab[3]);

	if(!fr->lsf) for(ch=0; ch<stereo; ch++)
	{
		si->ch[ch].gr[0].scfsi = -1;
		si->ch[ch].gr[1].scfsi = FUNC6(fr, 4);
	}

	for (gr=0; gr<tab[0]; gr++)
	for (ch=0; ch<stereo; ch++)
	{
		register struct gr_info_s *gr_info = &(si->ch[ch].gr[gr]);

		gr_info->part2_3_length = FUNC5(fr, 12);
		gr_info->big_values = FUNC5(fr, 9);
		if(gr_info->big_values > 288)
		{
			if(NOQUIET) FUNC2("big_values too large!");
			gr_info->big_values = 288;
		}
		gr_info->pow2gain = fr->gainpow2+256 - FUNC6(fr, 8) + powdiff;
		if(ms_stereo) gr_info->pow2gain += 2;
		gr_info->scalefac_compress = FUNC5(fr, tab[4]);
		if(gr_info->part2_3_length == 0)
		{
			if(gr_info->scalefac_compress > 0)
				FUNC1( "scalefac_compress _should_ be zero instead of %i"
				,	gr_info->scalefac_compress );
			gr_info->scalefac_compress = 0;
		}

		if(FUNC4(fr))
		{ /* window switch flag  */
			int i;
			gr_info->block_type       = FUNC6(fr, 2);
			gr_info->mixed_block_flag = FUNC4(fr);
			gr_info->table_select[0]  = FUNC6(fr, 5);
			gr_info->table_select[1]  = FUNC6(fr, 5);
			/*
				table_select[2] not needed, because there is no region2,
				but to satisfy some verification tools we set it either.
			*/
			gr_info->table_select[2] = 0;
			for(i=0;i<3;i++)
			gr_info->full_gain[i] = gr_info->pow2gain + (FUNC6(fr, 3)<<3);

			if(gr_info->block_type == 0)
			{
				if(NOQUIET) FUNC2("Blocktype == 0 and window-switching == 1 not allowed.");
				return 1;
			}

			/* region_count/start parameters are implicit in this case. */       
			if( (!fr->lsf || (gr_info->block_type == 2)) && !fr->mpeg25)
			{
				gr_info->region1start = 36>>1;
				gr_info->region2start = 576>>1;
			}
			else
			{
				if(fr->mpeg25)
				{ 
					int r0c,r1c;
					if((gr_info->block_type == 2) && (!gr_info->mixed_block_flag) ) r0c = 5;
					else r0c = 7;

					/* r0c+1+r1c+1 == 22, always. */
					r1c = 20 - r0c;
					gr_info->region1start = bandInfo[sfreq].longIdx[r0c+1] >> 1 ;
					gr_info->region2start = bandInfo[sfreq].longIdx[r0c+1+r1c+1] >> 1; 
				}
				else
				{
					gr_info->region1start = 54>>1;
					gr_info->region2start = 576>>1; 
				} 
			}
		}
		else
		{
			int i,r0c,r1c;
			for (i=0; i<3; i++)
			gr_info->table_select[i] = FUNC6(fr, 5);

			r0c = FUNC6(fr, 4); /* 0 .. 15 */
			r1c = FUNC6(fr, 3); /* 0 .. 7 */
			gr_info->region1start = bandInfo[sfreq].longIdx[r0c+1] >> 1 ;

			/* max(r0c+r1c+2) = 15+7+2 = 24 */
			if(r0c+1+r1c+1 > 22) gr_info->region2start = 576>>1;
			else gr_info->region2start = bandInfo[sfreq].longIdx[r0c+1+r1c+1] >> 1;

			gr_info->block_type = 0;
			gr_info->mixed_block_flag = 0;
		}
		if(!fr->lsf) gr_info->preflag = FUNC4(fr);

		gr_info->scalefac_scale = FUNC4(fr);
		gr_info->count1table_select = FUNC4(fr);
	}
	return 0;
}