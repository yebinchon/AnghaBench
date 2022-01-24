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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 

void FUNC3(char *z){
  char quote;                     /* Quote character (if any ) */

  FUNC0( 0==FUNC2(z[0]) );
  quote = z[0];
  if( quote=='[' || quote=='\'' || quote=='"' || quote=='`' ){
    FUNC1(z);
  }
}