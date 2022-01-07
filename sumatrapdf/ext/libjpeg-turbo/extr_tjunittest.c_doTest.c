
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tjhandle ;


 int TJFLAG_BOTTOMUP ;
 int TJFLAG_FASTUPSAMPLE ;
 int TJPF_RGBA ;
 int TJPF_RGBX ;
 int TJPF_XRGB ;
 int TJSAMP_420 ;
 int TJSAMP_422 ;
 int TJSAMP_440 ;
 scalar_t__ YUVDECODE ;
 scalar_t__ YUVENCODE ;
 int _throw (char*) ;
 int _throwtj () ;
 int alloc ;
 int compTest (int *,unsigned char**,unsigned long*,int,int,int,char*,int,int,int) ;
 int decompTest (int *,unsigned char*,unsigned long,int,int,int,char*,int,int) ;
 int printf (char*) ;
 scalar_t__ tjAlloc (unsigned long) ;
 unsigned long tjBufSize (int,int,int) ;
 unsigned long tjBufSizeYUV (int,int,int) ;
 int tjDestroy (int *) ;
 int tjFree (unsigned char*) ;
 int * tjInitCompress () ;
 int * tjInitDecompress () ;
 scalar_t__ yuv ;

void doTest(int w, int h, const int *formats, int nformats, int subsamp,
 char *basename)
{
 tjhandle chandle=((void*)0), dhandle=((void*)0);
 unsigned char *dstBuf=((void*)0);
 unsigned long size=0; int pfi, pf, i;

 if(!alloc)
 {
  size=(yuv==YUVENCODE? tjBufSizeYUV(w, h, subsamp)
   : tjBufSize(w, h, subsamp));
  if((dstBuf=(unsigned char *)tjAlloc(size))==((void*)0))
   _throw("Memory allocation failure.");
 }

 if((chandle=tjInitCompress())==((void*)0) || (dhandle=tjInitDecompress())==((void*)0))
  _throwtj();

 for(pfi=0; pfi<nformats; pfi++)
 {
  for(i=0; i<2; i++)
  {
   int flags=0;
   if(subsamp==TJSAMP_422 || subsamp==TJSAMP_420 || subsamp==TJSAMP_440)
    flags|=TJFLAG_FASTUPSAMPLE;
   if(i==1)
   {
    if(yuv==YUVDECODE) goto bailout;
    else flags|=TJFLAG_BOTTOMUP;
   }
   pf=formats[pfi];
   compTest(chandle, &dstBuf, &size, w, h, pf, basename, subsamp, 100,
    flags);
   decompTest(dhandle, dstBuf, size, w, h, pf, basename, subsamp,
    flags);
   if(pf>=TJPF_RGBX && pf<=TJPF_XRGB)
   {
    printf("\n");
    decompTest(dhandle, dstBuf, size, w, h, pf+(TJPF_RGBA-TJPF_RGBX),
     basename, subsamp, flags);
   }
   printf("\n");
  }
 }
 printf("--------------------\n\n");

 bailout:
 if(chandle) tjDestroy(chandle);
 if(dhandle) tjDestroy(dhandle);

 if(dstBuf) tjFree(dstBuf);
}
