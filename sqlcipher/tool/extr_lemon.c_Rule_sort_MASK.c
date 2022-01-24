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
typedef  int /*<<< orphan*/  x ;
struct rule {struct rule* next; } ;

/* Variables and functions */
 struct rule* FUNC0 (struct rule*,struct rule*) ; 
 int /*<<< orphan*/  FUNC1 (struct rule**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct rule *FUNC2(struct rule *rp){
  int i;
  struct rule *pNext;
  struct rule *x[32];
  FUNC1(x, 0, sizeof(x));
  while( rp ){
    pNext = rp->next;
    rp->next = 0;
    for(i=0; i<sizeof(x)/sizeof(x[0]) && x[i]; i++){
      rp = FUNC0(x[i], rp);
      x[i] = 0;
    }
    x[i] = rp;
    rp = pNext;
  }
  rp = 0;
  for(i=0; i<sizeof(x)/sizeof(x[0]); i++){
    rp = FUNC0(x[i], rp);
  }
  return rp;
}