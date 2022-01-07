
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ColorMap; } ;
struct TYPE_8__ {int Extensions; int * SavedImages; int * SColorMap; TYPE_1__ Image; struct TYPE_8__* Private; } ;
typedef TYPE_2__ GifFileType ;
typedef TYPE_2__ GifFilePrivateType ;


 int FreeExtension (int *) ;
 int FreeMapObject (int *) ;
 int FreeSavedImages (TYPE_2__*) ;
 int GIF_ERROR ;
 int GIF_OK ;
 int ungif_free (TYPE_2__*) ;

int
DGifCloseFile(GifFileType * GifFile) {

    GifFilePrivateType *Private;

    if (GifFile == ((void*)0))
        return GIF_ERROR;

    Private = GifFile->Private;

    if (GifFile->Image.ColorMap) {
        FreeMapObject(GifFile->Image.ColorMap);
        GifFile->Image.ColorMap = ((void*)0);
    }

    if (GifFile->SColorMap) {
        FreeMapObject(GifFile->SColorMap);
        GifFile->SColorMap = ((void*)0);
    }

    ungif_free(Private);
    Private = ((void*)0);

    if (GifFile->SavedImages) {
        FreeSavedImages(GifFile);
        GifFile->SavedImages = ((void*)0);
    }

    FreeExtension(&GifFile->Extensions);

    ungif_free(GifFile);

    return GIF_OK;
}
