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
typedef  int /*<<< orphan*/  x3node ;
struct s_x3 {int size; int /*<<< orphan*/ ** ht; int /*<<< orphan*/ * tbl; scalar_t__ count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct s_x3*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct s_x3* x3a ; 

void FUNC3(void){
  if( x3a ) return;
  x3a = (struct s_x3*)FUNC2( sizeof(struct s_x3) );
  if( x3a ){
    x3a->size = 128;
    x3a->count = 0;
    x3a->tbl = (x3node*)FUNC0(128, sizeof(x3node) + sizeof(x3node*));
    if( x3a->tbl==0 ){
      FUNC1(x3a);
      x3a = 0;
    }else{
      int i;
      x3a->ht = (x3node**)&(x3a->tbl[128]);
      for(i=0; i<128; i++) x3a->ht[i] = 0;
    }
  }
}