
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int PixelCount; } ;
struct TYPE_7__ {int Width; } ;
struct TYPE_8__ {TYPE_1__ Image; TYPE_3__* Private; } ;
typedef int GifPixelType ;
typedef TYPE_2__ GifFileType ;
typedef TYPE_3__ GifFilePrivateType ;
typedef int GifByteType ;


 scalar_t__ DGifDecompressLine (TYPE_2__*,int *,int) ;
 int DGifGetCodeNext (TYPE_2__*,int **) ;
 int GIF_ERROR ;
 scalar_t__ GIF_OK ;
 int WARN (char*) ;

__attribute__((used)) static int
DGifGetLine(GifFileType * GifFile,
            GifPixelType * Line,
            int LineLen) {

    GifByteType *Dummy;
    GifFilePrivateType *Private = GifFile->Private;

    if (!LineLen)
        LineLen = GifFile->Image.Width;

    if ((Private->PixelCount -= LineLen) > 0xffff0000UL) {
        return GIF_ERROR;
    }

    if (DGifDecompressLine(GifFile, Line, LineLen) == GIF_OK) {
        if (Private->PixelCount == 0) {



            do
                if (DGifGetCodeNext(GifFile, &Dummy) == GIF_ERROR)
                {
                    WARN("GIF is not properly terminated\n");
                    break;
                }
            while (Dummy != ((void*)0)) ;
        }
        return GIF_OK;
    } else
        return GIF_ERROR;
}
