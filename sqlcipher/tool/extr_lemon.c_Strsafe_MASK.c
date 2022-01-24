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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

const char *FUNC6(const char *y)
{
  const char *z;
  char *cpy;

  if( y==0 ) return 0;
  z = FUNC1(y);
  if( z==0 && (cpy=(char *)FUNC5( FUNC3(y)+1 ))!=0 ){
    FUNC4(cpy,y);
    z = cpy;
    FUNC2(z);
  }
  FUNC0(z);
  return z;
}