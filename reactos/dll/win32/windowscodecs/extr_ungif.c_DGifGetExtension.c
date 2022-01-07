
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GifFileType ;
typedef int GifByteType ;


 int DGifGetExtensionNext (int *,int**) ;
 int GIF_ERROR ;
 int READ (int *,int*,int) ;

__attribute__((used)) static int
DGifGetExtension(GifFileType * GifFile,
                 int *ExtCode,
                 GifByteType ** Extension) {

    GifByteType Buf;

    if (READ(GifFile, &Buf, 1) != 1) {
        return GIF_ERROR;
    }
    *ExtCode = Buf;

    return DGifGetExtensionNext(GifFile, Extension);
}
