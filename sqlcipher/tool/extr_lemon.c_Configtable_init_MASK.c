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
typedef  int /*<<< orphan*/  x4node ;
struct s_x4 {int size; int /*<<< orphan*/ ** ht; int /*<<< orphan*/ * tbl; scalar_t__ count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct s_x4*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct s_x4* x4a ; 

void FUNC3(void){
  if( x4a ) return;
  x4a = (struct s_x4*)FUNC2( sizeof(struct s_x4) );
  if( x4a ){
    x4a->size = 64;
    x4a->count = 0;
    x4a->tbl = (x4node*)FUNC0(64, sizeof(x4node) + sizeof(x4node*));
    if( x4a->tbl==0 ){
      FUNC1(x4a);
      x4a = 0;
    }else{
      int i;
      x4a->ht = (x4node**)&(x4a->tbl[64]);
      for(i=0; i<64; i++) x4a->ht[i] = 0;
    }
  }
}