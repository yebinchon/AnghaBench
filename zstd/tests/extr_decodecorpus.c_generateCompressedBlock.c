
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int windowSize; } ;
struct TYPE_7__ {int * src; int oldStats; int stats; int * data; TYPE_1__ header; } ;
typedef TYPE_2__ frame_t ;
typedef int dictInfo ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 int DISPLAYLEVEL (int,char*,...) ;
 int MAX_WINDOW_LOG ;
 size_t MIN (unsigned int,int) ;
 size_t const RAND (scalar_t__*) ;
 unsigned int g_maxBlockSize ;
 int initFrame (TYPE_2__*) ;
 size_t writeCompressedBlock (scalar_t__*,TYPE_2__*,size_t,int ) ;

__attribute__((used)) static U32 generateCompressedBlock(U32 seed, frame_t* frame, dictInfo info)
{
    size_t blockContentSize;
    int blockWritten = 0;
    BYTE* op;
    DISPLAYLEVEL(4, "block seed: %u\n", (unsigned)seed);
    initFrame(frame);
    op = (BYTE*)frame->data;

    while (!blockWritten) {
        size_t cSize;

        { int const exponent = RAND(&seed) % (MAX_WINDOW_LOG - 10);
            int const mantissa = RAND(&seed) % 8;
            frame->header.windowSize = (1U << (exponent + 10));
            frame->header.windowSize += (frame->header.windowSize / 8) * mantissa;
        }


        { size_t const maxBlockSize = MIN(g_maxBlockSize, frame->header.windowSize);
            if (RAND(&seed) & 15) {

                blockContentSize = maxBlockSize;
            } else if (RAND(&seed) & 7 && g_maxBlockSize >= (1U << 7)) {

                blockContentSize = RAND(&seed) % (1U << 7);
            } else {

                blockContentSize = RAND(&seed) % maxBlockSize;
            }
        }


        frame->oldStats = frame->stats;
        frame->data = op;
        cSize = writeCompressedBlock(&seed, frame, blockContentSize, info);
        if (cSize >= blockContentSize) {

            frame->stats = frame->oldStats;
            DISPLAYLEVEL(5, "   can't compress block : try again \n");
        } else {
            blockWritten = 1;
            DISPLAYLEVEL(4, "   block size: %u \n", (unsigned)cSize);
            frame->src = (BYTE*)frame->src + blockContentSize;
        }
    }
    return seed;
}
