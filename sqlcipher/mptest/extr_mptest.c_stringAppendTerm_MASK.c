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
struct TYPE_4__ {scalar_t__ n; } ;
typedef  TYPE_1__ String ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int) ; 

__attribute__((used)) static void FUNC2(String *p, const char *z){
  int i;
  if( p->n ) FUNC1(p, " ", 1);
  if( z==0 ){
    FUNC1(p, "nil", 3);
    return;
  }
  for(i=0; z[i] && !FUNC0(z[i]); i++){}
  if( i>0 && z[i]==0 ){
    FUNC1(p, z, i);
    return;
  }
  FUNC1(p, "'", 1);
  while( z[0] ){
    for(i=0; z[i] && z[i]!='\''; i++){}
    if( z[i] ){
      FUNC1(p, z, i+1);
      FUNC1(p, "'", 1);
      z += i+1;
    }else{
      FUNC1(p, z, i);
      break;
    }
  }
  FUNC1(p, "'", 1);
}