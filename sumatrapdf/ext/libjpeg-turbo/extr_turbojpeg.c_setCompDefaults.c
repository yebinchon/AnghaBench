
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jpeg_compress_struct {TYPE_1__* comp_info; int dct_method; int input_components; int in_color_space; } ;
struct TYPE_2__ {int h_samp_factor; int v_samp_factor; } ;


 int JCS_EXT_BGR ;
 int JCS_EXT_BGRX ;
 int JCS_EXT_RGB ;
 int JCS_EXT_RGBX ;
 int JCS_EXT_XBGR ;
 int JCS_EXT_XRGB ;
 int JCS_GRAYSCALE ;
 int JCS_RGB ;
 int JCS_YCbCr ;
 int JDCT_FASTEST ;
 int JDCT_ISLOW ;
 int TJFLAG_ACCURATEDCT ;
 int TJSAMP_GRAY ;
 int TRUE ;
 int jpeg_set_colorspace (struct jpeg_compress_struct*,int ) ;
 int jpeg_set_defaults (struct jpeg_compress_struct*) ;
 int jpeg_set_quality (struct jpeg_compress_struct*,int,int ) ;
 int* tjMCUHeight ;
 int* tjMCUWidth ;
 int * tjPixelSize ;

__attribute__((used)) static int setCompDefaults(struct jpeg_compress_struct *cinfo,
 int pixelFormat, int subsamp, int jpegQual, int flags)
{
 int retval=0;

 switch(pixelFormat)
 {
  case 133:
   cinfo->in_color_space=JCS_GRAYSCALE; break;
  case 132:
  case 136:
  case 130:
  case 134:
  case 128:
  case 129:
  case 131:
  case 135:
  case 137:
  case 138:
   cinfo->in_color_space=JCS_RGB; pixelFormat=132;
   break;

 }

 cinfo->input_components=tjPixelSize[pixelFormat];
 jpeg_set_defaults(cinfo);
 if(jpegQual>=0)
 {
  jpeg_set_quality(cinfo, jpegQual, TRUE);
  if(jpegQual>=96 || flags&TJFLAG_ACCURATEDCT) cinfo->dct_method=JDCT_ISLOW;
  else cinfo->dct_method=JDCT_FASTEST;
 }
 if(subsamp==TJSAMP_GRAY)
  jpeg_set_colorspace(cinfo, JCS_GRAYSCALE);
 else
  jpeg_set_colorspace(cinfo, JCS_YCbCr);

 cinfo->comp_info[0].h_samp_factor=tjMCUWidth[subsamp]/8;
 cinfo->comp_info[1].h_samp_factor=1;
 cinfo->comp_info[2].h_samp_factor=1;
 cinfo->comp_info[0].v_samp_factor=tjMCUHeight[subsamp]/8;
 cinfo->comp_info[1].v_samp_factor=1;
 cinfo->comp_info[2].v_samp_factor=1;

 return retval;
}
