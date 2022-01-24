#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* pwfxSrc; TYPE_1__* pwfxDst; } ;
struct TYPE_8__ {int wSamplesPerBlock; } ;
struct TYPE_7__ {int nBlockAlign; } ;
struct TYPE_6__ {int nBlockAlign; int wBitsPerSample; } ;
typedef  int* LPDWORD ;
typedef  int DWORD ;
typedef  TYPE_3__ ADPCMWAVEFORMAT ;
typedef  int /*<<< orphan*/  ADPCMCOEFSET ;
typedef  TYPE_4__ ACMDRVSTREAMINSTANCE ;

/* Variables and functions */
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/ * MSADPCM_CoeffSet ; 
 int FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const,int*,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static	void FUNC6(const ACMDRVSTREAMINSTANCE *adsi,
                        const unsigned char* src, LPDWORD nsrc,
                        unsigned char* dst, LPDWORD ndst)
{
    int                 idelta;
    int                 sample1, sample2;
    ADPCMCOEFSET        coeff;
    int                 nsamp;
    int		        nsamp_blk = ((ADPCMWAVEFORMAT*)adsi->pwfxSrc)->wSamplesPerBlock;
    DWORD	        nblock = FUNC4(*nsrc / adsi->pwfxSrc->nBlockAlign,
                                     *ndst / (nsamp_blk * adsi->pwfxDst->nBlockAlign));

    *nsrc = nblock * adsi->pwfxSrc->nBlockAlign;
    *ndst = nblock * nsamp_blk * adsi->pwfxDst->nBlockAlign;

    nsamp_blk -= 2; /* see below for samples from block head */
    for (; nblock > 0; nblock--)
    {
        const unsigned char*    in_src = src;

        FUNC3(*src <= 6);
        coeff = MSADPCM_CoeffSet[*src++];

        idelta =  FUNC1(src);     src += 2;
        sample1 = FUNC1(src);     src += 2;
        sample2 = FUNC1(src);     src += 2;

        /* store samples from block head */
        if(adsi->pwfxDst->wBitsPerSample == 8){
            *dst = FUNC0(sample2);    ++dst;
            *dst = FUNC0(sample1);    ++dst;

            for (nsamp = nsamp_blk; nsamp > 0; nsamp -= 2)
            {
                FUNC5(*src >> 4, &idelta, &sample1, &sample2, &coeff);
                *dst = FUNC0(sample1); ++dst;
                FUNC5(*src++ & 0x0F, &idelta, &sample1, &sample2, &coeff);
                *dst = FUNC0(sample1); ++dst;
            }
        }else if(adsi->pwfxDst->wBitsPerSample == 16){
            FUNC2(dst, sample2);      dst += 2;
            FUNC2(dst, sample1);      dst += 2;

            for (nsamp = nsamp_blk; nsamp > 0; nsamp -= 2)
            {
                FUNC5(*src >> 4, &idelta, &sample1, &sample2, &coeff);
                FUNC2(dst, sample1); dst += 2;
                FUNC5(*src++ & 0x0F, &idelta, &sample1, &sample2, &coeff);
                FUNC2(dst, sample1); dst += 2;
            }
        }

        src = in_src + adsi->pwfxSrc->nBlockAlign;
    }
}