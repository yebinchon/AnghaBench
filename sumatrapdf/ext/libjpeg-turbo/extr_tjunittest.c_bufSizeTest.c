
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tjhandle ;


 int RAND_MAX ;
 int TJFLAG_NOREALLOC ;
 int TJPF_BGRX ;
 int TJ_NUMSAMP ;
 scalar_t__ YUVENCODE ;
 int _throw (char*) ;
 int _throwtj () ;
 int _tj (int ) ;
 scalar_t__ alloc ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 int printf (char*,...) ;
 int random () ;
 scalar_t__ tjAlloc (unsigned long) ;
 unsigned long tjBufSize (int,int,int) ;
 unsigned long tjBufSizeYUV (int,int,int) ;
 int tjCompress2 (int *,unsigned char*,int,int ,int,int ,unsigned char**,unsigned long*,int,int,int ) ;
 int tjDestroy (int *) ;
 int tjEncodeYUV2 (int *,unsigned char*,int,int ,int,int ,unsigned char*,int,int ) ;
 int tjFree (unsigned char*) ;
 int * tjInitCompress () ;
 scalar_t__ yuv ;

void bufSizeTest(void)
{
 int w, h, i, subsamp;
 unsigned char *srcBuf=((void*)0), *dstBuf=((void*)0);
 tjhandle handle=((void*)0);
 unsigned long dstSize=0;

 if((handle=tjInitCompress())==((void*)0)) _throwtj();

 printf("Buffer size regression test\n");
 for(subsamp=0; subsamp<TJ_NUMSAMP; subsamp++)
 {
  for(w=1; w<48; w++)
  {
   int maxh=(w==1)? 2048:48;
   for(h=1; h<maxh; h++)
   {
    if(h%100==0) printf("%.4d x %.4d\b\b\b\b\b\b\b\b\b\b\b", w, h);
    if((srcBuf=(unsigned char *)malloc(w*h*4))==((void*)0))
     _throw("Memory allocation failure");
    if(!alloc || yuv==YUVENCODE)
    {
     if(yuv==YUVENCODE) dstSize=tjBufSizeYUV(w, h, subsamp);
     else dstSize=tjBufSize(w, h, subsamp);
     if((dstBuf=(unsigned char *)tjAlloc(dstSize))==((void*)0))
      _throw("Memory allocation failure");
    }

    for(i=0; i<w*h*4; i++)
    {
     if(random()<RAND_MAX/2) srcBuf[i]=0;
     else srcBuf[i]=255;
    }

    if(yuv==YUVENCODE)
    {
     _tj(tjEncodeYUV2(handle, srcBuf, w, 0, h, TJPF_BGRX, dstBuf, subsamp,
      0));
    }
    else
    {
     _tj(tjCompress2(handle, srcBuf, w, 0, h, TJPF_BGRX, &dstBuf,
      &dstSize, subsamp, 100, alloc? 0:TJFLAG_NOREALLOC));
    }
    free(srcBuf); srcBuf=((void*)0);
    tjFree(dstBuf); dstBuf=((void*)0);

    if((srcBuf=(unsigned char *)malloc(h*w*4))==((void*)0))
     _throw("Memory allocation failure");
    if(!alloc || yuv==YUVENCODE)
    {
     if(yuv==YUVENCODE) dstSize=tjBufSizeYUV(h, w, subsamp);
     else dstSize=tjBufSize(h, w, subsamp);
     if((dstBuf=(unsigned char *)tjAlloc(dstSize))==((void*)0))
      _throw("Memory allocation failure");
    }

    for(i=0; i<h*w*4; i++)
    {
     if(random()<RAND_MAX/2) srcBuf[i]=0;
     else srcBuf[i]=255;
    }

    if(yuv==YUVENCODE)
    {
     _tj(tjEncodeYUV2(handle, srcBuf, h, 0, w, TJPF_BGRX, dstBuf, subsamp,
      0));
    }
    else
    {
     _tj(tjCompress2(handle, srcBuf, h, 0, w, TJPF_BGRX, &dstBuf,
      &dstSize, subsamp, 100, alloc? 0:TJFLAG_NOREALLOC));
    }
    free(srcBuf); srcBuf=((void*)0);
    tjFree(dstBuf); dstBuf=((void*)0);
   }
  }
 }
 printf("Done.      \n");

 bailout:
 if(srcBuf) free(srcBuf);
 if(dstBuf) free(dstBuf);
 if(handle) tjDestroy(handle);
}
