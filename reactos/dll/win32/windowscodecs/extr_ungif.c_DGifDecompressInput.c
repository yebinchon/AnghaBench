
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long RunningBits; unsigned long CrntShiftState; unsigned long CrntShiftDWord; scalar_t__ RunningCode; int MaxCode1; int Buf; } ;
struct TYPE_5__ {TYPE_2__* Private; } ;
typedef TYPE_1__ GifFileType ;
typedef TYPE_2__ GifFilePrivateType ;
typedef scalar_t__ GifByteType ;


 int DGifBufferedInput (TYPE_1__*,int ,scalar_t__*) ;
 int GIF_ERROR ;
 int GIF_OK ;
 unsigned long LZ_BITS ;
 scalar_t__ LZ_MAX_CODE ;

__attribute__((used)) static int
DGifDecompressInput(GifFileType * GifFile,
                    int *Code) {

    GifFilePrivateType *Private = GifFile->Private;

    GifByteType NextByte;
    static const unsigned short CodeMasks[] = {
        0x0000, 0x0001, 0x0003, 0x0007,
        0x000f, 0x001f, 0x003f, 0x007f,
        0x00ff, 0x01ff, 0x03ff, 0x07ff,
        0x0fff
    };

    if (Private->RunningBits > LZ_BITS) {
        return GIF_ERROR;
    }

    while (Private->CrntShiftState < Private->RunningBits) {

        if (DGifBufferedInput(GifFile, Private->Buf, &NextByte) == GIF_ERROR) {
            return GIF_ERROR;
        }
        Private->CrntShiftDWord |=
           ((unsigned long)NextByte) << Private->CrntShiftState;
        Private->CrntShiftState += 8;
    }
    *Code = Private->CrntShiftDWord & CodeMasks[Private->RunningBits];

    Private->CrntShiftDWord >>= Private->RunningBits;
    Private->CrntShiftState -= Private->RunningBits;






    if (Private->RunningCode < LZ_MAX_CODE + 2 &&
            ++Private->RunningCode > Private->MaxCode1 &&
            Private->RunningBits < LZ_BITS) {
        Private->MaxCode1 <<= 1;
        Private->RunningBits++;
    }
    return GIF_OK;
}
