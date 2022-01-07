
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ read (int,char*,size_t) ;

int
BufferGets(char *buf, size_t bufsize, int inStream, char *secondaryBuf, char **secBufPtr, char **secBufLimit, size_t secBufSize)
{
 int err;
 char *src;
 char *dst;
 char *dstlim;
 int len;
 int nr;
 int haveEof = 0;

 err = 0;
 dst = buf;
 dstlim = dst + bufsize - 1;
 src = (*secBufPtr);
 for ( ; dst < dstlim; ) {
  if (src >= (*secBufLimit)) {






   nr = (int) read(inStream, secondaryBuf, secBufSize);
   if (nr == 0) {

    haveEof = 1;
    goto done;
   } else if (nr < 0) {

    err = -1;
    goto done;
   }
   (*secBufPtr) = secondaryBuf;
   (*secBufLimit) = secondaryBuf + nr;
   src = (*secBufPtr);
   if (nr < (int) secBufSize)
    src[nr] = '\0';
  }
  if (*src == '\r') {
   ++src;
  } else {
   if (*src == '\n') {
                           ++src;
    goto done;
   }
   *dst++ = *src++;
  }
 }

done:
 (*secBufPtr) = src;
 *dst = '\0';
 len = (int) (dst - buf);
 if (err < 0)
  return (err);
 if ((len == 0) && (haveEof == 1))
  return (-1);
 return (len);
}
