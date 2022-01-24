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
struct TYPE_4__ {scalar_t__* z; scalar_t__ n; } ;
typedef  TYPE_1__ String ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void FUNC1(String *p){
  if( p->z==0 ) FUNC0(p, " ", 1);
  p->n = 0;
  p->z[0] = 0;
}