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
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int,int) ; 
 scalar_t__ SQLITE_UTF16BE ; 
 scalar_t__ SQLITE_UTF16NATIVE ; 

int FUNC2(const void *zIn, int nChar){
  int c;
  unsigned char const *z = zIn;
  int n = 0;
  
  if( SQLITE_UTF16NATIVE==SQLITE_UTF16BE ){
    while( n<nChar ){
      FUNC0(z, 1, c);
      n++;
    }
  }else{
    while( n<nChar ){
      FUNC1(z, 1, c);
      n++;
    }
  }
  return (int)(z-(unsigned char const *)zIn);
}