#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  output_message; int /*<<< orphan*/  error_exit; } ;
struct my_error_mgr {int /*<<< orphan*/  setjmp_buffer; TYPE_6__ pub; } ;
struct jpeg_decompress_struct {int out_color_components; int output_components; int image_width; int image_height; int scale_num; int scale_denom; scalar_t__ output_scanline; scalar_t__ output_height; TYPE_1__* mem; int /*<<< orphan*/  global_state; int /*<<< orphan*/  out_color_space; int /*<<< orphan*/  err; } ;
typedef  int /*<<< orphan*/  j_common_ptr ;
typedef  TYPE_2__* djpeg_dest_ptr ;
struct TYPE_10__ {int buffer_height; int /*<<< orphan*/  (* finish_output ) (struct jpeg_decompress_struct*,TYPE_2__*) ;int /*<<< orphan*/  (* put_pixel_rows ) (struct jpeg_decompress_struct*,TYPE_2__*,int) ;int /*<<< orphan*/ * buffer; int /*<<< orphan*/  (* start_output ) (struct jpeg_decompress_struct*,TYPE_2__*) ;int /*<<< orphan*/ * output_file; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* realize_virt_arrays ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DSTATE_READY ; 
 int /*<<< orphan*/  JCS_GRAYSCALE ; 
 int /*<<< orphan*/  JCS_RGB ; 
 int TJPF_GRAY ; 
 int TJPF_RGB ; 
 int TJ_NUMPF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 TYPE_2__* FUNC4 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_error_exit ; 
 int /*<<< orphan*/  my_output_message ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (struct jpeg_decompress_struct*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct jpeg_decompress_struct*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct jpeg_decompress_struct*,TYPE_2__*) ; 
 int* tjPixelSize ; 

int FUNC18(char *filename, unsigned char *buf, int w, int h, int srcpf,
	int bottomup)
{
	int retval=0, srcps, dstpf;
	struct jpeg_decompress_struct dinfo;
	struct my_error_mgr jerr;
	djpeg_dest_ptr dst;
	FILE *file=NULL;
	char *ptr=NULL;

	FUNC9(&dinfo, 0, sizeof(struct jpeg_decompress_struct));

	if(!filename || !buf || w<1 || h<1 || srcpf<0 || srcpf>=TJ_NUMPF)
		FUNC0("savebmp(): Invalid argument");

	if((file=FUNC3(filename, "wb"))==NULL)
		FUNC1("savebmp(): Cannot open output file");

	dinfo.err=FUNC8(&jerr.pub);
	jerr.pub.error_exit=my_error_exit;
	jerr.pub.output_message=my_output_message;

	if(FUNC11(jerr.setjmp_buffer))
	{
		/* If we get here, the JPEG code has signaled an error. */
		retval=-1;  goto bailout;
	}

	FUNC6(&dinfo);
	if(srcpf==TJPF_GRAY)
	{
		dinfo.out_color_components=dinfo.output_components=1;
		dinfo.out_color_space=JCS_GRAYSCALE;
	}
	else
	{
		dinfo.out_color_components=dinfo.output_components=3;
		dinfo.out_color_space=JCS_RGB;
	}
	dinfo.image_width=w;  dinfo.image_height=h;
	dinfo.global_state=DSTATE_READY;
	dinfo.scale_num=dinfo.scale_denom=1;

	ptr=FUNC13(filename, '.');
	if(ptr && !FUNC12(ptr, ".bmp"))
	{
		if((dst=FUNC4(&dinfo, 0))==NULL)
			FUNC0("savebmp(): Could not initialize bitmap writer");
	}
	else
	{
		if((dst=FUNC5(&dinfo))==NULL)
			FUNC0("savebmp(): Could not initialize PPM writer");
	}

	dst->output_file=file;
	(*dst->start_output)(&dinfo, dst);
	(*dinfo.mem->realize_virt_arrays)((j_common_ptr)&dinfo);

	if(srcpf==TJPF_GRAY) dstpf=srcpf;
	else dstpf=TJPF_RGB;
	srcps=tjPixelSize[srcpf];

	while(dinfo.output_scanline<dinfo.output_height)
	{
		int i, nlines=dst->buffer_height;
		for(i=0; i<nlines; i++)
		{
			unsigned char *inbuf;  int row;
			row=dinfo.output_scanline+i;
			if(bottomup) inbuf=&buf[(h-row-1)*w*srcps];
			else inbuf=&buf[row*w*srcps];
			FUNC10(inbuf, srcpf, bottomup, dst->buffer[i], dstpf, 0, w,
				nlines);
		}
		(*dst->put_pixel_rows)(&dinfo, dst, nlines);
		dinfo.output_scanline+=nlines;
	}

	(*dst->finish_output)(&dinfo, dst);

	bailout:
	FUNC7(&dinfo);
	if(file) FUNC2(file);
	return retval;
}