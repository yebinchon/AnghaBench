
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ExtensionBlocks; } ;
struct TYPE_9__ {int ImageCount; TYPE_2__* SavedImages; } ;
struct TYPE_7__ {int * ColorMap; } ;
struct TYPE_8__ {TYPE_6__ Extensions; struct TYPE_8__* RasterBits; TYPE_1__ ImageDesc; } ;
typedef TYPE_2__ SavedImage ;
typedef TYPE_3__ GifFileType ;


 int FreeExtension (TYPE_6__*) ;
 int FreeMapObject (int *) ;
 int ungif_free (TYPE_2__*) ;

__attribute__((used)) static void
FreeSavedImages(GifFileType * GifFile) {

    SavedImage *sp;

    if ((GifFile == ((void*)0)) || (GifFile->SavedImages == ((void*)0))) {
        return;
    }
    for (sp = GifFile->SavedImages;
         sp < GifFile->SavedImages + GifFile->ImageCount; sp++) {
        if (sp->ImageDesc.ColorMap) {
            FreeMapObject(sp->ImageDesc.ColorMap);
            sp->ImageDesc.ColorMap = ((void*)0);
        }

        ungif_free(sp->RasterBits);

        if (sp->Extensions.ExtensionBlocks)
            FreeExtension(&sp->Extensions);
    }
    ungif_free(GifFile->SavedImages);
    GifFile->SavedImages=((void*)0);
}
