
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int ) ;
 size_t parseDimension (int const*,size_t,size_t*) ;

__attribute__((used)) static bool getSizeFromString(const uint8_t *buf, size_t buflen,
                              size_t *width, size_t *height,
                              size_t *len)
{
 size_t numlen;
 assert(buf != ((void*)0));
 assert(width != ((void*)0));
 assert(height != ((void*)0));

 if ((*width = parseDimension(buf, buflen, &numlen)) == 0) {
  return 0;
 }
 *len = numlen + 1;

 if ((*height = parseDimension(buf + *len, buflen, &numlen)) == 0) {
  return 0;
 }
 *len += numlen + 1;

 return 1;
}
