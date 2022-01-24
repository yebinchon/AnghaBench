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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;

/* Variables and functions */
 int /*<<< orphan*/ * desk_save ; 
 int g_server_Bpp ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int /*<<< orphan*/ *) ; 

void FUNC1(uint32 offset, int x, int y, int cx, int cy)
{
  uint8* p;

  if (offset > 0x38400)
    offset = 0;
  if (offset + cx * cy > 0x38400)
    return;
  p = desk_save + offset * g_server_Bpp;
  FUNC0(x, y, cx, cy, cx, cy, p);
}