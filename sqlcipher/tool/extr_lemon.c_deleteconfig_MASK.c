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
struct config {struct config* next; } ;

/* Variables and functions */
 struct config* freelist ; 

void FUNC0(struct config *old)
{
  old->next = freelist;
  freelist = old;
}