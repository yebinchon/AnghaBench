
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GifRecordType ;
typedef int GifFileType ;
typedef int GifByteType ;


 int EXTENSION_RECORD_TYPE ;
 int GIF_ERROR ;
 int GIF_OK ;
 int IMAGE_DESC_RECORD_TYPE ;
 int READ (int *,int*,int) ;
 int TERMINATE_RECORD_TYPE ;
 int UNDEFINED_RECORD_TYPE ;

__attribute__((used)) static int
DGifGetRecordType(GifFileType * GifFile,
                  GifRecordType * Type) {

    GifByteType Buf;

    if (READ(GifFile, &Buf, 1) != 1) {


        *Type = TERMINATE_RECORD_TYPE;
        return GIF_OK;
    }

    switch (Buf) {
      case ',':
          *Type = IMAGE_DESC_RECORD_TYPE;
          break;
      case '!':
          *Type = EXTENSION_RECORD_TYPE;
          break;
      case ';':
          *Type = TERMINATE_RECORD_TYPE;
          break;
      default:
          *Type = UNDEFINED_RECORD_TYPE;
          return GIF_ERROR;
    }

    return GIF_OK;
}
