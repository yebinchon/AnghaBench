
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tjhandle ;
struct TYPE_3__ {int num; int denom; } ;
typedef int FILE ;


 int TJFLAG_BOTTOMUP ;
 int TJSCALED (int,TYPE_1__) ;
 int TJ_GRAYSCALE ;
 scalar_t__ YUVDECODE ;
 int _throwbmp (char*) ;
 int _throwtj (char*) ;
 int _throwunix (char*) ;
 unsigned char abs (unsigned char) ;
 double benchtime ;
 scalar_t__ decomponly ;
 scalar_t__ dotile ;
 char* ext ;
 int fclose (int *) ;
 int flags ;
 int * fopen (char*,char*) ;
 int free (unsigned char*) ;
 int fwrite (unsigned char*,int,int,int *) ;
 double gettime () ;
 scalar_t__ malloc (int) ;
 int memset (unsigned char*,int,int) ;
 int min (int,int) ;
 size_t pf ;
 int printf (char*,...) ;
 scalar_t__ quiet ;
 int savebmp (char*,unsigned char*,int,int,size_t,int) ;
 TYPE_1__ sf ;
 char* sigfig (double,int,char*,int) ;
 int snprintf (char*,int,char*,...) ;
 char* strrchr (char*,char) ;
 char** subName ;
 int* tjBlueOffset ;
 int tjBufSizeYUV (int,int,int) ;
 int tjDecompress2 (int *,unsigned char*,unsigned long,unsigned char*,int,int,int,size_t,int) ;
 int tjDecompressToYUV (int *,unsigned char*,unsigned long,unsigned char*,int) ;
 int tjDestroy (int *) ;
 int* tjGreenOffset ;
 int * tjInitDecompress () ;
 int* tjPixelSize ;
 int* tjRedOffset ;
 scalar_t__ yuv ;

int decomptest(unsigned char *srcbuf, unsigned char **jpegbuf,
 unsigned long *jpegsize, unsigned char *dstbuf, int w, int h,
 int subsamp, int jpegqual, char *filename, int tilew, int tileh)
{
 char tempstr[1024], sizestr[20]="\0", qualstr[6]="\0", *ptr;
 FILE *file=((void*)0); tjhandle handle=((void*)0);
 int row, col, i, dstbufalloc=0, retval=0;
 double start, elapsed;
 int ps=tjPixelSize[pf];
 int yuvsize=tjBufSizeYUV(w, h, subsamp), bufsize;
 int scaledw=(yuv==YUVDECODE)? w : TJSCALED(w, sf);
 int scaledh=(yuv==YUVDECODE)? h : TJSCALED(h, sf);
 int pitch=scaledw*ps;
 int ntilesw=(w+tilew-1)/tilew, ntilesh=(h+tileh-1)/tileh;
 unsigned char *dstptr, *dstptr2;

 if(jpegqual>0)
 {
  snprintf(qualstr, 6, "_Q%d", jpegqual);
  qualstr[5]=0;
 }

 if((handle=tjInitDecompress())==((void*)0))
  _throwtj("executing tjInitDecompress()");

 bufsize=(yuv==YUVDECODE? yuvsize:pitch*scaledh);
 if(dstbuf==((void*)0))
 {
  if((dstbuf=(unsigned char *)malloc(bufsize)) == ((void*)0))
   _throwunix("allocating image buffer");
  dstbufalloc=1;
 }


 memset(dstbuf, 127, bufsize);


 if(yuv==YUVDECODE)
 {
  if(tjDecompressToYUV(handle, jpegbuf[0], jpegsize[0], dstbuf, flags)==-1)
   _throwtj("executing tjDecompressToYUV()");
 }
 else if(tjDecompress2(handle, jpegbuf[0], jpegsize[0], dstbuf, scaledw,
  pitch, scaledh, pf, flags)==-1)
  _throwtj("executing tjDecompress2()");


 for(i=0, start=gettime(); (elapsed=gettime()-start)<benchtime; i++)
 {
  int tile=0;
  if(yuv==YUVDECODE)
  {
   if(tjDecompressToYUV(handle, jpegbuf[0], jpegsize[0], dstbuf, flags)==-1)
    _throwtj("executing tjDecompressToYUV()");
  }
  else for(row=0, dstptr=dstbuf; row<ntilesh; row++, dstptr+=pitch*tileh)
  {
   for(col=0, dstptr2=dstptr; col<ntilesw; col++, tile++, dstptr2+=ps*tilew)
   {
    int width=dotile? min(tilew, w-col*tilew):scaledw;
    int height=dotile? min(tileh, h-row*tileh):scaledh;
    if(tjDecompress2(handle, jpegbuf[tile], jpegsize[tile], dstptr2, width,
     pitch, height, pf, flags)==-1)
     _throwtj("executing tjDecompress2()");
   }
  }
 }

 if(tjDestroy(handle)==-1) _throwtj("executing tjDestroy()");
 handle=((void*)0);

 if(quiet)
 {
  printf("%s\n",
   sigfig((double)(w*h)/1000000.*(double)i/elapsed, 4, tempstr, 1024));
 }
 else
 {
  printf("D--> Frame rate:           %f fps\n", (double)i/elapsed);
  printf("     Dest. throughput:     %f Megapixels/sec\n",
   (double)(w*h)/1000000.*(double)i/elapsed);
 }
 if(yuv==YUVDECODE)
 {
  snprintf(tempstr, 1024, "%s_%s%s.yuv", filename, subName[subsamp],
   qualstr);
  if((file=fopen(tempstr, "wb"))==((void*)0))
   _throwunix("opening YUV image for output");
  if(fwrite(dstbuf, yuvsize, 1, file)!=1)
   _throwunix("writing YUV image");
  fclose(file); file=((void*)0);
 }
 else
 {
  if(sf.num!=1 || sf.denom!=1)
   snprintf(sizestr, 20, "%d_%d", sf.num, sf.denom);
  else if(tilew!=w || tileh!=h)
   snprintf(sizestr, 20, "%dx%d", tilew, tileh);
  else snprintf(sizestr, 20, "full");
  if(decomponly)
   snprintf(tempstr, 1024, "%s_%s.%s", filename, sizestr, ext);
  else
   snprintf(tempstr, 1024, "%s_%s%s_%s.%s", filename, subName[subsamp],
    qualstr, sizestr, ext);
  if(savebmp(tempstr, dstbuf, scaledw, scaledh, pf,
   (flags&TJFLAG_BOTTOMUP)!=0)==-1)
   _throwbmp("saving bitmap");
  ptr=strrchr(tempstr, '.');
  snprintf(ptr, 1024-(ptr-tempstr), "-err.%s", ext);
  if(srcbuf && sf.num==1 && sf.denom==1)
  {
   if(!quiet) printf("Compression error written to %s.\n", tempstr);
   if(subsamp==TJ_GRAYSCALE)
   {
    int index, index2;
    for(row=0, index=0; row<h; row++, index+=pitch)
    {
     for(col=0, index2=index; col<w; col++, index2+=ps)
     {
      int rindex=index2+tjRedOffset[pf];
      int gindex=index2+tjGreenOffset[pf];
      int bindex=index2+tjBlueOffset[pf];
      int y=(int)((double)srcbuf[rindex]*0.299
       + (double)srcbuf[gindex]*0.587
       + (double)srcbuf[bindex]*0.114 + 0.5);
      if(y>255) y=255; if(y<0) y=0;
      dstbuf[rindex]=abs(dstbuf[rindex]-y);
      dstbuf[gindex]=abs(dstbuf[gindex]-y);
      dstbuf[bindex]=abs(dstbuf[bindex]-y);
     }
    }
   }
   else
   {
    for(row=0; row<h; row++)
     for(col=0; col<w*ps; col++)
      dstbuf[pitch*row+col]
       =abs(dstbuf[pitch*row+col]-srcbuf[pitch*row+col]);
   }
   if(savebmp(tempstr, dstbuf, w, h, pf,
    (flags&TJFLAG_BOTTOMUP)!=0)==-1)
    _throwbmp("saving bitmap");
  }
 }

 bailout:
 if(file) {fclose(file); file=((void*)0);}
 if(handle) {tjDestroy(handle); handle=((void*)0);}
 if(dstbuf && dstbufalloc) {free(dstbuf); dstbuf=((void*)0);}
 return retval;
}
