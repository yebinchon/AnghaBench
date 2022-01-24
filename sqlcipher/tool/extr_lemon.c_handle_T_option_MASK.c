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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* user_templatename ; 

__attribute__((used)) static void FUNC4(char *z){
  user_templatename = (char *) FUNC2( FUNC0(z)+1 );
  if( user_templatename==0 ){
    FUNC3();
  }
  FUNC1(user_templatename, z);
}