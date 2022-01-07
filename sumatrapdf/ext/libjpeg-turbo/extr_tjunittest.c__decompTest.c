
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; int denom; } ;
typedef TYPE_1__ tjscalingfactor ;
typedef int tjhandle ;


 int TJFLAG_BOTTOMUP ;
 int TJSCALED (int,TYPE_1__) ;
 scalar_t__ YUVDECODE ;
 scalar_t__ YUVENCODE ;
 int _throw (char*) ;
 int _tj (int ) ;
 scalar_t__ checkBuf (unsigned char*,int,int,int,int,TYPE_1__,int) ;
 scalar_t__ checkBufYUV (unsigned char*,int,int,int) ;
 int free (unsigned char*) ;
 double gettime () ;
 scalar_t__ malloc (unsigned long) ;
 int memset (unsigned char*,int ,unsigned long) ;
 char** pixFormatStr ;
 int printf (char*,...) ;
 char** subNameLong ;
 unsigned long tjBufSizeYUV (int,int,int) ;
 int tjDecompress2 (int ,unsigned char*,unsigned long,unsigned char*,int,int ,int,int,int) ;
 int tjDecompressHeader2 (int ,unsigned char*,unsigned long,int*,int*,int*) ;
 int tjDecompressToYUV (int ,unsigned char*,unsigned long,unsigned char*,int) ;
 int* tjPixelSize ;
 scalar_t__ yuv ;

void _decompTest(tjhandle handle, unsigned char *jpegBuf,
 unsigned long jpegSize, int w, int h, int pf, char *basename, int subsamp,
 int flags, tjscalingfactor sf)
{
 unsigned char *dstBuf=((void*)0);
 int _hdrw=0, _hdrh=0, _hdrsubsamp=-1; double t;
 int scaledWidth=TJSCALED(w, sf);
 int scaledHeight=TJSCALED(h, sf);
 unsigned long dstSize=0;

 if(yuv==YUVENCODE) return;

 if(yuv==YUVDECODE)
  printf("JPEG -> YUV %s ... ", subNameLong[subsamp]);
 else
 {
  printf("JPEG -> %s %s ", pixFormatStr[pf],
   (flags&TJFLAG_BOTTOMUP)? "Bottom-Up":"Top-Down ");
  if(sf.num!=1 || sf.denom!=1)
   printf("%d/%d ... ", sf.num, sf.denom);
  else printf("... ");
 }

 _tj(tjDecompressHeader2(handle, jpegBuf, jpegSize, &_hdrw, &_hdrh,
  &_hdrsubsamp));
 if(_hdrw!=w || _hdrh!=h || _hdrsubsamp!=subsamp)
  _throw("Incorrect JPEG header");

 if(yuv==YUVDECODE) dstSize=tjBufSizeYUV(w, h, subsamp);
 else dstSize=scaledWidth*scaledHeight*tjPixelSize[pf];
 if((dstBuf=(unsigned char *)malloc(dstSize))==((void*)0))
  _throw("Memory allocation failure");
 memset(dstBuf, 0, dstSize);

 t=gettime();
 if(yuv==YUVDECODE)
 {
  _tj(tjDecompressToYUV(handle, jpegBuf, jpegSize, dstBuf, flags));
 }
 else
 {
  _tj(tjDecompress2(handle, jpegBuf, jpegSize, dstBuf, scaledWidth, 0,
   scaledHeight, pf, flags));
 }
 t=gettime()-t;

 if(yuv==YUVDECODE)
 {
  if(checkBufYUV(dstBuf, w, h, subsamp)) printf("Passed.");
  else printf("FAILED!");
 }
 else
 {
  if(checkBuf(dstBuf, scaledWidth, scaledHeight, pf, subsamp, sf, flags))
   printf("Passed.");
  else printf("FAILED!");
 }
 printf("  %f ms\n", t*1000.);

 bailout:
 if(dstBuf) free(dstBuf);
}
