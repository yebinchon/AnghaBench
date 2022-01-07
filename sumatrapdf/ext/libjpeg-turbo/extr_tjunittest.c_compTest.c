
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tjhandle ;


 int TJFLAG_BOTTOMUP ;
 int TJFLAG_NOREALLOC ;
 scalar_t__ YUVENCODE ;
 int _throw (char*) ;
 int _tj (int ) ;
 int alloc ;
 scalar_t__ checkBufYUV (unsigned char*,int,int,int) ;
 int free (unsigned char*) ;
 double gettime () ;
 int initBuf (unsigned char*,int,int,int,int) ;
 scalar_t__ malloc (int) ;
 int memset (unsigned char*,int ,unsigned long) ;
 char** pixFormatStr ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,char*,char*,char*,...) ;
 char** subName ;
 char** subNameLong ;
 unsigned long tjBufSize (int,int,int) ;
 unsigned long tjBufSizeYUV (int,int,int) ;
 int tjCompress2 (int ,unsigned char*,int,int ,int,int,unsigned char**,unsigned long*,int,int,int) ;
 int tjEncodeYUV2 (int ,unsigned char*,int,int ,int,int,unsigned char*,int,int) ;
 int* tjPixelSize ;
 int writeJPEG (unsigned char*,unsigned long,char*) ;
 scalar_t__ yuv ;

void compTest(tjhandle handle, unsigned char **dstBuf,
 unsigned long *dstSize, int w, int h, int pf, char *basename,
 int subsamp, int jpegQual, int flags)
{
 char tempStr[1024]; unsigned char *srcBuf=((void*)0);
 double t;

 if(yuv==YUVENCODE)
  printf("%s %s -> %s YUV ... ", pixFormatStr[pf],
   (flags&TJFLAG_BOTTOMUP)? "Bottom-Up":"Top-Down ", subNameLong[subsamp]);
 else
  printf("%s %s -> %s Q%d ... ", pixFormatStr[pf],
   (flags&TJFLAG_BOTTOMUP)? "Bottom-Up":"Top-Down ", subNameLong[subsamp],
   jpegQual);

 if((srcBuf=(unsigned char *)malloc(w*h*tjPixelSize[pf]))==((void*)0))
  _throw("Memory allocation failure");
 initBuf(srcBuf, w, h, pf, flags);
 if(*dstBuf && *dstSize>0) memset(*dstBuf, 0, *dstSize);

 t=gettime();
 if(yuv==YUVENCODE)
 {
  _tj(tjEncodeYUV2(handle, srcBuf, w, 0, h, pf, *dstBuf, subsamp, flags));
 }
 else
 {
  if(!alloc)
  {
   flags|=TJFLAG_NOREALLOC;
   *dstSize=(yuv==YUVENCODE? tjBufSizeYUV(w, h, subsamp)
    : tjBufSize(w, h, subsamp));
  }
  _tj(tjCompress2(handle, srcBuf, w, 0, h, pf, dstBuf, dstSize, subsamp,
   jpegQual, flags));
 }
 t=gettime()-t;

 if(yuv==YUVENCODE)
  snprintf(tempStr, 1024, "%s_enc_%s_%s_%s.yuv", basename, pixFormatStr[pf],
   (flags&TJFLAG_BOTTOMUP)? "BU":"TD", subName[subsamp]);
 else
  snprintf(tempStr, 1024, "%s_enc_%s_%s_%s_Q%d.jpg", basename,
   pixFormatStr[pf], (flags&TJFLAG_BOTTOMUP)? "BU":"TD", subName[subsamp],
   jpegQual);
 writeJPEG(*dstBuf, *dstSize, tempStr);
 if(yuv==YUVENCODE)
 {
  if(checkBufYUV(*dstBuf, w, h, subsamp)) printf("Passed.");
  else printf("FAILED!");
 }
 else printf("Done.");
 printf("  %f ms\n  Result in %s\n", t*1000., tempStr);

 bailout:
 if(srcBuf) free(srcBuf);
}
