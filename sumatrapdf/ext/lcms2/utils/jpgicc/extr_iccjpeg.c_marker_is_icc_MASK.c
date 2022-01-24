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
typedef  TYPE_1__* jpeg_saved_marker_ptr ;
typedef  int boolean ;
struct TYPE_3__ {scalar_t__ marker; scalar_t__ data_length; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ICC_MARKER ; 
 scalar_t__ ICC_OVERHEAD_LEN ; 

__attribute__((used)) static boolean
FUNC1 (jpeg_saved_marker_ptr marker)
{
  return
    marker->marker == ICC_MARKER &&
    marker->data_length >= ICC_OVERHEAD_LEN &&
    /* verify the identifying string */
    FUNC0(marker->data[0]) == 0x49 &&
    FUNC0(marker->data[1]) == 0x43 &&
    FUNC0(marker->data[2]) == 0x43 &&
    FUNC0(marker->data[3]) == 0x5F &&
    FUNC0(marker->data[4]) == 0x50 &&
    FUNC0(marker->data[5]) == 0x52 &&
    FUNC0(marker->data[6]) == 0x4F &&
    FUNC0(marker->data[7]) == 0x46 &&
    FUNC0(marker->data[8]) == 0x49 &&
    FUNC0(marker->data[9]) == 0x4C &&
    FUNC0(marker->data[10]) == 0x45 &&
    FUNC0(marker->data[11]) == 0x0;
}