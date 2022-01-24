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
 int SQLITE_OPEN_URI ; 
 scalar_t__ FUNC0 (char const*) ; 

__attribute__((used)) static const char *FUNC1(const char *zName, int flags){
  int n = (int)FUNC0(zName);
  const char *z = &zName[n];
  if( flags & SQLITE_OPEN_URI ){
    int odd = 0;
    while( 1 ){
      if( z[0]==0 ){
        odd = 1 - odd;
        if( odd && z[1]==0 ) break;
      }
      z++;
    }
    z += 2;
  }else{
    while( *z==0 ) z++;
  }
  z += (n + 8 + 1);
  return z;
}