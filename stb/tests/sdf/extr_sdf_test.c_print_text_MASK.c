#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {float advance; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,char,float) ; 
 TYPE_1__* fdata ; 

void FUNC1(float x, float y, char *text, float scale)
{
   int i;
   for (i=0; text[i]; ++i) {
      if (fdata[text[i]].data)
         FUNC0(x,y,text[i],scale);
      x += fdata[text[i]].advance * scale;
   }
}