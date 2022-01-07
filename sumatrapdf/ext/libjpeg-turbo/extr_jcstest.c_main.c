
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jpeg_compress_struct {int input_components; int in_color_space; int err; } ;
struct TYPE_4__ {int output_message; int error_exit; } ;
struct TYPE_3__ {int jb; TYPE_2__ pub; } ;
typedef TYPE_1__ error_mgr ;


 int JCS_EXT_RGB ;
 int JCS_EXT_RGBA ;
 int jpeg_create_compress (struct jpeg_compress_struct*) ;
 int jpeg_default_colorspace (struct jpeg_compress_struct*) ;
 int jpeg_destroy_compress (struct jpeg_compress_struct*) ;
 int jpeg_set_defaults (struct jpeg_compress_struct*) ;
 int jpeg_std_error (TYPE_2__*) ;
 char* lasterror ;
 int my_error_exit ;
 int my_output_message ;
 int printf (char*,...) ;
 scalar_t__ setjmp (int ) ;

int main(void)
{
  int jcs_valid = -1, jcs_alpha_valid = -1;
  struct jpeg_compress_struct cinfo;
  error_mgr jerr;

  printf("libjpeg-turbo colorspace extensions:\n");



  printf("  Not present at compile time\n");


  cinfo.err = jpeg_std_error(&jerr.pub);
  jerr.pub.error_exit = my_error_exit;
  jerr.pub.output_message = my_output_message;

  if(setjmp(jerr.jb)) {

    jcs_valid = 0;
    goto done;
  }

  jpeg_create_compress(&cinfo);
  cinfo.input_components = 3;
  jpeg_set_defaults(&cinfo);
  cinfo.in_color_space = JCS_EXT_RGB;
  jpeg_default_colorspace(&cinfo);
  jcs_valid = 1;

  done:
  if (jcs_valid)
    printf("  Working properly\n");
  else
    printf("  Not working properly.  Error returned was:\n    %s\n",
           lasterror);

  printf("libjpeg-turbo alpha colorspace extensions:\n");



  printf("  Not present at compile time\n");


  if(setjmp(jerr.jb)) {

    jcs_alpha_valid = 0;
    goto done2;
  }

  cinfo.in_color_space = JCS_EXT_RGBA;
  jpeg_default_colorspace(&cinfo);
  jcs_alpha_valid = 1;

  done2:
  if (jcs_alpha_valid)
    printf("  Working properly\n");
  else
    printf("  Not working properly.  Error returned was:\n    %s\n",
           lasterror);

  jpeg_destroy_compress(&cinfo);
  return 0;
}
