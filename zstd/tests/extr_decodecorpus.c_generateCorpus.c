
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ genType_e ;
struct TYPE_4__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef TYPE_1__ frame_t ;
typedef int dictInfo ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 int DISPLAY (char*,...) ;
 int DISPLAYUPDATE (char*,unsigned int,unsigned int) ;
 int MAX_PATH ;
 scalar_t__ generateCompressedBlock (scalar_t__,TYPE_1__*,int const) ;
 scalar_t__ generateFrame (scalar_t__,TYPE_1__*,int const) ;
 scalar_t__ gt_frame ;
 int initDictInfo (int ,int ,int *,int ) ;
 int outputBuffer (scalar_t__,int,char*) ;
 int snprintf (char*,int,char*,char const* const,unsigned int) ;

__attribute__((used)) static int generateCorpus(U32 seed, unsigned numFiles, const char* const path,
                          const char* const origPath, genType_e genType)
{
    char outPath[MAX_PATH];
    unsigned fnum;

    DISPLAY("seed: %u\n", (unsigned)seed);

    for (fnum = 0; fnum < numFiles; fnum++) {
        frame_t fr;

        DISPLAYUPDATE("\r%u/%u        ", fnum, numFiles);

        { dictInfo const info = initDictInfo(0, 0, ((void*)0), 0);
            if (genType == gt_frame) {
                seed = generateFrame(seed, &fr, info);
            } else {
                seed = generateCompressedBlock(seed, &fr, info);
            }
        }

        if (snprintf(outPath, MAX_PATH, "%s/z%06u.zst", path, fnum) + 1 > MAX_PATH) {
            DISPLAY("Error: path too long\n");
            return 1;
        }
        outputBuffer(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, outPath);

        if (origPath) {
            if (snprintf(outPath, MAX_PATH, "%s/z%06u", origPath, fnum) + 1 > MAX_PATH) {
                DISPLAY("Error: path too long\n");
                return 1;
            }
            outputBuffer(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, outPath);
        }
    }

    DISPLAY("\r%u/%u      \n", fnum, numFiles);

    return 0;
}
