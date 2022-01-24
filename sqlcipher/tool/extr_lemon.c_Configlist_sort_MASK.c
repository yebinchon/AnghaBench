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
struct config {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  Configcmp ; 
 struct config* current ; 
 scalar_t__ currentend ; 
 scalar_t__ FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 

void FUNC1(void){
  current = (struct config*)FUNC0((char*)current,(char**)&(current->next),
                                  Configcmp);
  currentend = 0;
  return;
}