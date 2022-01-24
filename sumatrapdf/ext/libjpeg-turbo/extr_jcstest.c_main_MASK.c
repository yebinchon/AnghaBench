#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct jpeg_compress_struct {int input_components; int /*<<< orphan*/  in_color_space; int /*<<< orphan*/  err; } ;
struct TYPE_4__ {int /*<<< orphan*/  output_message; int /*<<< orphan*/  error_exit; } ;
struct TYPE_3__ {int /*<<< orphan*/  jb; TYPE_2__ pub; } ;
typedef  TYPE_1__ error_mgr ;

/* Variables and functions */
 int /*<<< orphan*/  JCS_EXT_RGB ; 
 int /*<<< orphan*/  JCS_EXT_RGBA ; 
 int /*<<< orphan*/  FUNC0 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 char* lasterror ; 
 int /*<<< orphan*/  my_error_exit ; 
 int /*<<< orphan*/  my_output_message ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(void)
{
  int jcs_valid = -1, jcs_alpha_valid = -1;
  struct jpeg_compress_struct cinfo;
  error_mgr jerr;

  FUNC5("libjpeg-turbo colorspace extensions:\n");
  #if JCS_EXTENSIONS
  printf("  Present at compile time\n");
  #else
  FUNC5("  Not present at compile time\n");
  #endif

  cinfo.err = FUNC4(&jerr.pub);
  jerr.pub.error_exit = my_error_exit;
  jerr.pub.output_message = my_output_message;

  if(FUNC6(jerr.jb)) {
    /* this will execute if libjpeg has an error */
    jcs_valid = 0;
    goto done;
  }

  FUNC0(&cinfo);
  cinfo.input_components = 3;
  FUNC3(&cinfo);
  cinfo.in_color_space = JCS_EXT_RGB;
  FUNC1(&cinfo);
  jcs_valid = 1;

  done:
  if (jcs_valid)
    FUNC5("  Working properly\n");
  else
    FUNC5("  Not working properly.  Error returned was:\n    %s\n",
           lasterror);

  FUNC5("libjpeg-turbo alpha colorspace extensions:\n");
  #if JCS_ALPHA_EXTENSIONS
  printf("  Present at compile time\n");
  #else
  FUNC5("  Not present at compile time\n");
  #endif

  if(FUNC6(jerr.jb)) {
    /* this will execute if libjpeg has an error */
    jcs_alpha_valid = 0;
    goto done2;
  }

  cinfo.in_color_space = JCS_EXT_RGBA;
  FUNC1(&cinfo);
  jcs_alpha_valid = 1;

  done2:
  if (jcs_alpha_valid)
    FUNC5("  Working properly\n");
  else
    FUNC5("  Not working properly.  Error returned was:\n    %s\n",
           lasterror);

  FUNC2(&cinfo);
  return 0;
}