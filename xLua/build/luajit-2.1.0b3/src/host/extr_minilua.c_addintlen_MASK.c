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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(char*form){
size_t l=FUNC1(form);
char spec=form[l-1];
FUNC0(form+l-1,"l");
form[l+sizeof("l")-2]=spec;
form[l+sizeof("l")-1]='\0';
}