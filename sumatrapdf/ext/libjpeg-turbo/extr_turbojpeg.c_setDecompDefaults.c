
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_decompress_struct {int dct_method; int out_color_space; } ;


 int JCS_EXT_ABGR ;
 int JCS_EXT_ARGB ;
 int JCS_EXT_BGR ;
 int JCS_EXT_BGRA ;
 int JCS_EXT_BGRX ;
 int JCS_EXT_RGB ;
 int JCS_EXT_RGBA ;
 int JCS_EXT_RGBX ;
 int JCS_EXT_XBGR ;
 int JCS_EXT_XRGB ;
 int JCS_GRAYSCALE ;
 int JCS_RGB ;
 int JDCT_FASTEST ;
 int TJFLAG_FASTDCT ;
 int _throw (char*) ;

__attribute__((used)) static int setDecompDefaults(struct jpeg_decompress_struct *dinfo,
 int pixelFormat, int flags)
{
 int retval=0;

 switch(pixelFormat)
 {
  case 133:
   dinfo->out_color_space=JCS_GRAYSCALE; break;
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
   dinfo->out_color_space=JCS_RGB; break;

  default:
   _throw("Unsupported pixel format");
 }

 if(flags&TJFLAG_FASTDCT) dinfo->dct_method=JDCT_FASTEST;

 bailout:
 return retval;
}
