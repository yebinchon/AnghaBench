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
 unsigned int FUNC0 (unsigned short,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned int*,int,int,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,unsigned short*,int,int,int,int,int*) ; 
 unsigned short* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(unsigned char *Frame,        // mpi->planes[x]
                    unsigned char *FrameDest,    // dmpi->planes[x]
                    unsigned int *LineAnt,      // vf->priv->Line (width bytes)
                    unsigned short **FrameAntPtr,
                    int W, int H, int sStride, int dStride,
                    int *Horizontal, int *Vertical, int *Temporal)
{
    long sLineOffs = 0, dLineOffs = 0;
    unsigned int PixelAnt;
    unsigned int PixelDst;
    unsigned short* FrameAnt=(*FrameAntPtr);

    if(!FrameAnt){
        (*FrameAntPtr)=FrameAnt=FUNC3(W*H*sizeof(unsigned short));
        if(!FrameAnt)
            return;
        for (long Y = 0; Y < H; Y++){
            unsigned short* dst=&FrameAnt[Y*W];
            unsigned char* src=Frame+Y*sStride;
            for (long X = 0; X < W; X++) dst[X]=src[X]<<8;
        }
    }

    if(!Horizontal[0] && !Vertical[0]){
        FUNC2(Frame, FrameDest, FrameAnt,
                        W, H, sStride, dStride, Temporal);
        return;
    }
    if(!Temporal[0]){
        FUNC1(Frame, FrameDest, LineAnt,
                       W, H, sStride, dStride, Horizontal, Vertical);
        return;
    }

    /* First pixel has no left nor top neighbor. Only previous frame */
    LineAnt[0] = PixelAnt = Frame[0]<<16;
    PixelDst = FUNC0(FrameAnt[0]<<8, PixelAnt, Temporal);
    FrameAnt[0] = ((PixelDst+0x1000007F)>>8);
    FrameDest[0]= ((PixelDst+0x10007FFF)>>16);

    /* First line has no top neighbor. Only left one for each pixel and
     * last frame */
    for (long X = 1; X < W; X++){
        LineAnt[X] = PixelAnt = FUNC0(PixelAnt, Frame[X]<<16, Horizontal);
        PixelDst = FUNC0(FrameAnt[X]<<8, PixelAnt, Temporal);
        FrameAnt[X] = ((PixelDst+0x1000007F)>>8);
        FrameDest[X]= ((PixelDst+0x10007FFF)>>16);
    }

    for (long Y = 1; Y < H; Y++){
        unsigned short* LinePrev=&FrameAnt[Y*W];
        sLineOffs += sStride, dLineOffs += dStride;
        /* First pixel on each line doesn't have previous pixel */
        PixelAnt = Frame[sLineOffs]<<16;
        LineAnt[0] = FUNC0(LineAnt[0], PixelAnt, Vertical);
        PixelDst = FUNC0(LinePrev[0]<<8, LineAnt[0], Temporal);
        LinePrev[0] = ((PixelDst+0x1000007F)>>8);
        FrameDest[dLineOffs]= ((PixelDst+0x10007FFF)>>16);

        for (long X = 1; X < W; X++){
            /* The rest are normal */
            PixelAnt = FUNC0(PixelAnt, Frame[sLineOffs+X]<<16, Horizontal);
            LineAnt[X] = FUNC0(LineAnt[X], PixelAnt, Vertical);
            PixelDst = FUNC0(LinePrev[X]<<8, LineAnt[X], Temporal);
            LinePrev[X] = ((PixelDst+0x1000007F)>>8);
            FrameDest[dLineOffs+X]= ((PixelDst+0x10007FFF)>>16);
        }
    }
}