
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* Buf; } ;
struct TYPE_5__ {TYPE_2__* Private; } ;
typedef TYPE_1__ GifFileType ;
typedef TYPE_2__ GifFilePrivateType ;
typedef int GifByteType ;


 int GIF_ERROR ;
 int GIF_OK ;
 int READ (TYPE_1__*,int*,int) ;

__attribute__((used)) static int
DGifGetExtensionNext(GifFileType * GifFile,
                     GifByteType ** Extension) {

    GifByteType Buf;
    GifFilePrivateType *Private = GifFile->Private;

    if (READ(GifFile, &Buf, 1) != 1) {
        return GIF_ERROR;
    }
    if (Buf > 0) {
        *Extension = Private->Buf;
        (*Extension)[0] = Buf;
        if (READ(GifFile, &((*Extension)[1]), Buf) != Buf) {
            return GIF_ERROR;
        }
    } else
        *Extension = ((void*)0);

    return GIF_OK;
}
