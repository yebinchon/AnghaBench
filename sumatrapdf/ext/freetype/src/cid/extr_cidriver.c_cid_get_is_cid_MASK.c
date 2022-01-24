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
typedef  int /*<<< orphan*/  FT_Error ;
typedef  int FT_Bool ;
typedef  int /*<<< orphan*/  CID_Face ;

/* Variables and functions */
 int /*<<< orphan*/  FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static FT_Error
  FUNC1( CID_Face  face,
                  FT_Bool  *is_cid )
  {
    FT_Error  error = FT_Err_Ok;
    FUNC0( face );


    if ( is_cid )
      *is_cid = 1; /* cid driver is only used for CID keyed fonts */

    return error;
  }