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
typedef  int /*<<< orphan*/  VOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ hbmBitmaps ; 
 int /*<<< orphan*/  hbmSave ; 
 scalar_t__ hdcMem ; 

VOID
FUNC3()
{
   if (hdcMem) {

      FUNC2(hdcMem, hbmSave);

      if (hbmBitmaps)
         FUNC1(hbmBitmaps);
      FUNC0(hdcMem);
   }
}