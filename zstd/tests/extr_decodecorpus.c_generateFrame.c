
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int frame_t ;
typedef int dictInfo ;
typedef scalar_t__ U32 ;


 int DISPLAYLEVEL (int,char*,unsigned int) ;
 int initFrame (int *) ;
 int writeBlocks (scalar_t__*,int *,int ) ;
 int writeChecksum (int *) ;
 int writeFrameHeader (scalar_t__*,int *,int ) ;

__attribute__((used)) static U32 generateFrame(U32 seed, frame_t* fr, dictInfo info)
{

    DISPLAYLEVEL(3, "frame seed: %u\n", (unsigned)seed);
    initFrame(fr);

    writeFrameHeader(&seed, fr, info);
    writeBlocks(&seed, fr, info);
    writeChecksum(fr);

    return seed;
}
