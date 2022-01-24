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
typedef  int /*<<< orphan*/  zInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 

char *FUNC5(const char *zText, int n, int p1, int p2){
  static char empty[1] = { 0 };
  static char *z = 0;
  static int alloced = 0;
  static int used = 0;
  int c;
  char zInt[40];
  if( zText==0 ){
    if( used==0 && z!=0 ) z[0] = 0;
    used = 0;
    return z;
  }
  if( n<=0 ){
    if( n<0 ){
      used += n;
      FUNC0( used>=0 );
    }
    n = FUNC1(zText);
  }
  if( (int) (n+sizeof(zInt)*2+used) >= alloced ){
    alloced = n + sizeof(zInt)*2 + used + 200;
    z = (char *) FUNC4(z,  alloced);
  }
  if( z==0 ) return empty;
  while( n-- > 0 ){
    c = *(zText++);
    if( c=='%' && n>0 && zText[0]=='d' ){
      FUNC2(zInt, "%d", p1);
      p1 = p2;
      FUNC3(&z[used], zInt);
      used += FUNC1(&z[used]);
      zText++;
      n--;
    }else{
      z[used++] = (char)c;
    }
  }
  z[used] = 0;
  return z;
}