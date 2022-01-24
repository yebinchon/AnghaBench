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
typedef  int FT_Pos ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PSH_DIR_DOWN ; 
 int PSH_DIR_LEFT ; 
 int PSH_DIR_NONE ; 
 int PSH_DIR_RIGHT ; 
 int PSH_DIR_UP ; 

__attribute__((used)) static int
  FUNC1( FT_Pos  dx,
                   FT_Pos  dy )
  {
    FT_Pos  ax, ay;
    int     result = PSH_DIR_NONE;


    ax = FUNC0( dx );
    ay = FUNC0( dy );

    if ( ay * 12 < ax )
    {
      /* |dy| <<< |dx|  means a near-horizontal segment */
      result = ( dx >= 0 ) ? PSH_DIR_RIGHT : PSH_DIR_LEFT;
    }
    else if ( ax * 12 < ay )
    {
      /* |dx| <<< |dy|  means a near-vertical segment */
      result = ( dy >= 0 ) ? PSH_DIR_UP : PSH_DIR_DOWN;
    }

    return result;
  }