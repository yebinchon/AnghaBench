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
typedef  int /*<<< orphan*/  strm_value ;

/* Variables and functions */
 int FALSE ; 
#define  STRM_TAG_STRING_6 131 
#define  STRM_TAG_STRING_F 130 
#define  STRM_TAG_STRING_I 129 
#define  STRM_TAG_STRING_O 128 
 int TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(strm_value v)
{
  switch (FUNC0(v)) {
  case STRM_TAG_STRING_I:
  case STRM_TAG_STRING_6:
  case STRM_TAG_STRING_F:
  case STRM_TAG_STRING_O:
    return TRUE;
  default:
    return FALSE;
  }
}