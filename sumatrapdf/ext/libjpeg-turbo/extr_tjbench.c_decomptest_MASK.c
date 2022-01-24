#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tjhandle ;
struct TYPE_3__ {int num; int denom; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TJFLAG_BOTTOMUP ; 
 int FUNC0 (int,TYPE_1__) ; 
 int TJ_GRAYSCALE ; 
 scalar_t__ YUVDECODE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned char FUNC4 (unsigned char) ; 
 double benchtime ; 
 scalar_t__ decomponly ; 
 scalar_t__ dotile ; 
 char* ext ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int flags ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int FUNC8 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 double FUNC9 () ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int,int) ; 
 int FUNC12 (int,int) ; 
 size_t pf ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ quiet ; 
 int FUNC14 (char*,unsigned char*,int,int,size_t,int) ; 
 TYPE_1__ sf ; 
 char* FUNC15 (double,int,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,...) ; 
 char* FUNC17 (char*,char) ; 
 char** subName ; 
 int* tjBlueOffset ; 
 int FUNC18 (int,int,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,unsigned char*,unsigned long,unsigned char*,int,int,int,size_t,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,unsigned char*,unsigned long,unsigned char*,int) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int* tjGreenOffset ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int* tjPixelSize ; 
 int* tjRedOffset ; 
 scalar_t__ yuv ; 

int FUNC23(unsigned char *srcbuf, unsigned char **jpegbuf,
	unsigned long *jpegsize, unsigned char *dstbuf, int w, int h,
	int subsamp, int jpegqual, char *filename, int tilew, int tileh)
{
	char tempstr[1024], sizestr[20]="\0", qualstr[6]="\0", *ptr;
	FILE *file=NULL;  tjhandle handle=NULL;
	int row, col, i, dstbufalloc=0, retval=0;
	double start, elapsed;
	int ps=tjPixelSize[pf];
	int yuvsize=FUNC18(w, h, subsamp), bufsize;
	int scaledw=(yuv==YUVDECODE)? w : FUNC0(w, sf);
	int scaledh=(yuv==YUVDECODE)? h : FUNC0(h, sf);
	int pitch=scaledw*ps;
	int ntilesw=(w+tilew-1)/tilew, ntilesh=(h+tileh-1)/tileh;
	unsigned char *dstptr, *dstptr2;

	if(jpegqual>0)
	{
		FUNC16(qualstr, 6, "_Q%d", jpegqual);
		qualstr[5]=0;
	}

	if((handle=FUNC22())==NULL)
		FUNC2("executing tjInitDecompress()");

	bufsize=(yuv==YUVDECODE? yuvsize:pitch*scaledh);
	if(dstbuf==NULL)
	{
		if((dstbuf=(unsigned char *)FUNC10(bufsize)) == NULL)
			FUNC3("allocating image buffer");
		dstbufalloc=1;
	}
	/* Set the destination buffer to gray so we know whether the decompressor
	   attempted to write to it */
	FUNC11(dstbuf, 127, bufsize);

	/* Execute once to preload cache */
	if(yuv==YUVDECODE)
	{
		if(FUNC20(handle, jpegbuf[0], jpegsize[0], dstbuf, flags)==-1)
			FUNC2("executing tjDecompressToYUV()");
	}
	else if(FUNC19(handle, jpegbuf[0], jpegsize[0], dstbuf, scaledw,
		pitch, scaledh, pf, flags)==-1)
		FUNC2("executing tjDecompress2()");

	/* Benchmark */
	for(i=0, start=FUNC9(); (elapsed=FUNC9()-start)<benchtime; i++)
	{
		int tile=0;
		if(yuv==YUVDECODE)
		{
			if(FUNC20(handle, jpegbuf[0], jpegsize[0], dstbuf, flags)==-1)
				FUNC2("executing tjDecompressToYUV()");
		}
		else for(row=0, dstptr=dstbuf; row<ntilesh; row++, dstptr+=pitch*tileh)
		{
			for(col=0, dstptr2=dstptr; col<ntilesw; col++, tile++, dstptr2+=ps*tilew)
			{
				int width=dotile? FUNC12(tilew, w-col*tilew):scaledw;
				int height=dotile? FUNC12(tileh, h-row*tileh):scaledh;
				if(FUNC19(handle, jpegbuf[tile], jpegsize[tile], dstptr2, width,
					pitch, height, pf, flags)==-1)
					FUNC2("executing tjDecompress2()");
			}
		}
	}

	if(FUNC21(handle)==-1) FUNC2("executing tjDestroy()");
	handle=NULL;

	if(quiet)
	{
		FUNC13("%s\n",
			FUNC15((double)(w*h)/1000000.*(double)i/elapsed, 4, tempstr, 1024));
	}
	else
	{
		FUNC13("D--> Frame rate:           %f fps\n", (double)i/elapsed);
		FUNC13("     Dest. throughput:     %f Megapixels/sec\n",
			(double)(w*h)/1000000.*(double)i/elapsed);
	}
	if(yuv==YUVDECODE)
	{
		FUNC16(tempstr, 1024, "%s_%s%s.yuv", filename, subName[subsamp],
			qualstr);
		if((file=FUNC6(tempstr, "wb"))==NULL)
			FUNC3("opening YUV image for output");
		if(FUNC8(dstbuf, yuvsize, 1, file)!=1)
			FUNC3("writing YUV image");
		FUNC5(file);  file=NULL;
	}
	else
	{
		if(sf.num!=1 || sf.denom!=1)
			FUNC16(sizestr, 20, "%d_%d", sf.num, sf.denom);
		else if(tilew!=w || tileh!=h)
			FUNC16(sizestr, 20, "%dx%d", tilew, tileh);
		else FUNC16(sizestr, 20, "full");
		if(decomponly)
			FUNC16(tempstr, 1024, "%s_%s.%s", filename, sizestr, ext);
		else
			FUNC16(tempstr, 1024, "%s_%s%s_%s.%s", filename, subName[subsamp],
				qualstr, sizestr, ext);
		if(FUNC14(tempstr, dstbuf, scaledw, scaledh, pf,
			(flags&TJFLAG_BOTTOMUP)!=0)==-1)
			FUNC1("saving bitmap");
		ptr=FUNC17(tempstr, '.');
		FUNC16(ptr, 1024-(ptr-tempstr), "-err.%s", ext);
		if(srcbuf && sf.num==1 && sf.denom==1)
		{
			if(!quiet) FUNC13("Compression error written to %s.\n", tempstr);
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
						if(y>255) y=255;  if(y<0) y=0;
						dstbuf[rindex]=FUNC4(dstbuf[rindex]-y);
						dstbuf[gindex]=FUNC4(dstbuf[gindex]-y);
						dstbuf[bindex]=FUNC4(dstbuf[bindex]-y);
					}
				}
			}		
			else
			{
				for(row=0; row<h; row++)
					for(col=0; col<w*ps; col++)
						dstbuf[pitch*row+col]
							=FUNC4(dstbuf[pitch*row+col]-srcbuf[pitch*row+col]);
			}
			if(FUNC14(tempstr, dstbuf, w, h, pf,
				(flags&TJFLAG_BOTTOMUP)!=0)==-1)
				FUNC1("saving bitmap");
		}
	}

	bailout:
	if(file) {FUNC5(file);  file=NULL;}
	if(handle) {FUNC21(handle);  handle=NULL;}
	if(dstbuf && dstbufalloc) {FUNC7(dstbuf);  dstbuf=NULL;}
	return retval;
}