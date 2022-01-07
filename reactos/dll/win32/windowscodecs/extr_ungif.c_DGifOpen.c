
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* UserData; int Read; void* Private; } ;
typedef int InputFunc ;
typedef TYPE_1__ GifFileType ;
typedef TYPE_1__ GifFilePrivateType ;


 scalar_t__ DGifGetScreenDesc (TYPE_1__*) ;
 scalar_t__ GIF_ERROR ;
 int GIF_STAMP ;
 int GIF_STAMP_LEN ;
 int GIF_VERSION_POS ;
 int READ (TYPE_1__*,unsigned char*,int) ;
 scalar_t__ memcmp (int ,unsigned char*,int ) ;
 int memset (TYPE_1__*,char,int) ;
 TYPE_1__* ungif_alloc (int) ;
 int ungif_free (TYPE_1__*) ;

GifFileType *
DGifOpen(void *userData,
         InputFunc readFunc) {

    unsigned char Buf[GIF_STAMP_LEN + 1];
    GifFileType *GifFile;
    GifFilePrivateType *Private;

    GifFile = ungif_alloc(sizeof(GifFileType));
    if (GifFile == ((void*)0)) {
        return ((void*)0);
    }

    memset(GifFile, '\0', sizeof(GifFileType));

    Private = ungif_alloc(sizeof(GifFilePrivateType));
    if (!Private) {
        ungif_free(GifFile);
        return ((void*)0);
    }

    GifFile->Private = (void*)Private;

    Private->Read = readFunc;
    GifFile->UserData = userData;


    if (READ(GifFile, Buf, GIF_STAMP_LEN) != GIF_STAMP_LEN) {
        ungif_free(Private);
        ungif_free(GifFile);
        return ((void*)0);
    }



    Buf[GIF_STAMP_LEN] = 0;
    if (memcmp(GIF_STAMP, Buf, GIF_VERSION_POS) != 0) {
        ungif_free(Private);
        ungif_free(GifFile);
        return ((void*)0);
    }

    if (DGifGetScreenDesc(GifFile) == GIF_ERROR) {
        ungif_free(Private);
        ungif_free(GifFile);
        return ((void*)0);
    }

    return GifFile;
}
