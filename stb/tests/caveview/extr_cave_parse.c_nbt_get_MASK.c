#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned char* cur; } ;
typedef  TYPE_1__ nbt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__*,unsigned char,int*) ; 

__attribute__((used)) static void *FUNC2(nbt *n, unsigned char type, int *len)
{
   FUNC0(n->cur[0] == type);
   n->cur += 3 + (n->cur[1]*256+n->cur[2]);
   return FUNC1(n, type, len);
}