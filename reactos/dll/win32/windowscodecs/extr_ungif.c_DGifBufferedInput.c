
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GifFileType ;
typedef int GifByteType ;


 int GIF_ERROR ;
 int GIF_OK ;
 int READ (int *,int*,int) ;

__attribute__((used)) static int
DGifBufferedInput(GifFileType * GifFile,
                  GifByteType * Buf,
                  GifByteType * NextByte) {

    if (Buf[0] == 0) {

        if (READ(GifFile, Buf, 1) != 1) {
            return GIF_ERROR;
        }




        if (Buf[0] == 0) {
            return GIF_ERROR;
        }
        if (READ(GifFile, &Buf[1], Buf[0]) != Buf[0]) {
            return GIF_ERROR;
        }
        *NextByte = Buf[1];
        Buf[1] = 2;
        Buf[0]--;
    } else {
        *NextByte = Buf[Buf[1]++];
        Buf[0]--;
    }

    return GIF_OK;
}
