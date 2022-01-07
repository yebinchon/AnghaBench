
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * MMBitmapRef ;
typedef int MMBMPStringError ;


 int STR_BITS_PER_PIXEL ;
 size_t STR_BYTES_PER_PIXEL ;
 int * base64decode (int const*,size_t,int *) ;
 int * createMMBitmap (int *,size_t,size_t,size_t,int ,size_t) ;
 int free (int *) ;
 int getSizeFromString (int const*,size_t,size_t*,size_t*,size_t*) ;
 int kMMBMPStringDecodeError ;
 int kMMBMPStringDecompressError ;
 int kMMBMPStringInvalidHeaderError ;
 int kMMBMPStringSizeError ;
 int * zlib_decompress (int *,size_t*) ;

MMBitmapRef createMMBitmapFromString(const uint8_t *buffer, size_t buflen,
                                     MMBMPStringError *err)
{
 uint8_t *decoded, *decompressed;
 size_t width, height;
 size_t len, bytewidth;

 if (*buffer++ != 'b' || !getSizeFromString(buffer, --buflen,
                                            &width, &height, &len)) {
  if (err != ((void*)0)) *err = kMMBMPStringInvalidHeaderError;
  return ((void*)0);
 }
 buffer += len;
 buflen -= len;

 decoded = base64decode(buffer, buflen, ((void*)0));
 if (decoded == ((void*)0)) {
  if (err != ((void*)0)) *err = kMMBMPStringDecodeError;
  return ((void*)0);
 }

 decompressed = zlib_decompress(decoded, &len);
 free(decoded);

 if (decompressed == ((void*)0)) {
  if (err != ((void*)0)) *err = kMMBMPStringDecompressError;
  return ((void*)0);
 }

 bytewidth = width * STR_BYTES_PER_PIXEL;

 if (height * bytewidth != len) {
  if (err != ((void*)0)) *err = kMMBMPStringSizeError;
  return ((void*)0);
 }

 return createMMBitmap(decompressed, width, height,
                       bytewidth, STR_BITS_PER_PIXEL, STR_BYTES_PER_PIXEL);
}
