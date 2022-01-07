
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_4__ {int width; int height; } ;
typedef TYPE_1__* MMBitmapRef ;
typedef int MMBMPStringError ;


 int MAX_DIMENSION_LEN ;
 int MMMBMPStringEncodeError ;
 int STR_BYTES_PER_PIXEL ;
 int assert (int ) ;
 char* base64encode (char*,size_t,size_t*) ;
 char* calloc (int,size_t) ;
 char* createRawBitmapData (TYPE_1__*) ;
 int free (char*) ;
 int kMMBMPStringCompressError ;
 int kMMBMPStringGenericError ;
 int snprintf (char*,size_t,char*,unsigned long,unsigned long,char*) ;
 char* zlib_compress (char*,int,int,size_t*) ;

uint8_t *createStringFromMMBitmap(MMBitmapRef bitmap, MMBMPStringError *err)
{
 uint8_t *raw, *compressed;
 uint8_t *ret, *encoded;
 size_t len, retlen;

 assert(bitmap != ((void*)0));

 raw = createRawBitmapData(bitmap);
 if (raw == ((void*)0)) {
  if (err != ((void*)0)) *err = kMMBMPStringGenericError;
  return ((void*)0);
 }

 compressed = zlib_compress(raw,
                            bitmap->width * bitmap->height *
                            STR_BYTES_PER_PIXEL,
                            9, &len);
 free(raw);
 if (compressed == ((void*)0)) {
  if (err != ((void*)0)) *err = kMMBMPStringCompressError;
  return ((void*)0);
 }

 encoded = base64encode(compressed, len - 1, &retlen);
 free(compressed);
 if (encoded == ((void*)0)) {
  if (err != ((void*)0)) *err = MMMBMPStringEncodeError;
  return ((void*)0);
 }

 retlen += 3 + (MAX_DIMENSION_LEN * 2);
 ret = calloc(sizeof(char), (retlen + 1));
 snprintf((char *)ret, retlen, "b%lu,%lu,%s", (unsigned long)bitmap->width,
                                              (unsigned long)bitmap->height,
             encoded);
 ret[retlen] = '\0';
 free(encoded);
 return ret;
}
