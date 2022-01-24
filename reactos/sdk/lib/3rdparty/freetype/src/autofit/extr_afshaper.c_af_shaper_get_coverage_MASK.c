#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FT_UShort ;
typedef  int /*<<< orphan*/  FT_Error ;
typedef  int /*<<< orphan*/ * FT_Bool ;
typedef  int /*<<< orphan*/ * AF_StyleClass ;
typedef  int /*<<< orphan*/ * AF_FaceGlobals ;

/* Variables and functions */
 int /*<<< orphan*/  FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

FT_Error
  FUNC1( AF_FaceGlobals  globals,
                          AF_StyleClass   style_class,
                          FT_UShort*      gstyles,
                          FT_Bool         default_script )
  {
    FUNC0( globals );
    FUNC0( style_class );
    FUNC0( gstyles );
    FUNC0( default_script );

    return FT_Err_Ok;
  }