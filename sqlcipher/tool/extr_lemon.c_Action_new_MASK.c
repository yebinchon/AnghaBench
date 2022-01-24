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
struct action {struct action* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct action *FUNC3(void){
  static struct action *freelist = 0;
  struct action *newaction;

  if( freelist==0 ){
    int i;
    int amt = 100;
    freelist = (struct action *)FUNC0(amt, sizeof(struct action));
    if( freelist==0 ){
      FUNC2(stderr,"Unable to allocate memory for a new parser action.");
      FUNC1(1);
    }
    for(i=0; i<amt-1; i++) freelist[i].next = &freelist[i+1];
    freelist[amt-1].next = 0;
  }
  newaction = freelist;
  freelist = freelist->next;
  return newaction;
}