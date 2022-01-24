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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 scalar_t__ FUNC1 (char*) ; 

int FUNC2(unsigned int n, char *zOut, int nOut){
  static const char *ones[] = {  "zero", "one", "two", "three", "four", "five", 
                  "six", "seven", "eight", "nine", "ten", "eleven", "twelve", 
                  "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",
                  "eighteen", "nineteen" };
  static const char *tens[] = { "", "ten", "twenty", "thirty", "forty",
                 "fifty", "sixty", "seventy", "eighty", "ninety" };
  int i = 0;

  if( n>=1000000000 ){
    i += FUNC2(n/1000000000, zOut+i, nOut-i);
    FUNC0(nOut-i, zOut+i, " billion");
    i += (int)FUNC1(zOut+i);
    n = n % 1000000000;
  }
  if( n>=1000000 ){
    if( i && i<nOut-1 ) zOut[i++] = ' ';
    i += FUNC2(n/1000000, zOut+i, nOut-i);
    FUNC0(nOut-i, zOut+i, " million");
    i += (int)FUNC1(zOut+i);
    n = n % 1000000;
  }
  if( n>=1000 ){
    if( i && i<nOut-1 ) zOut[i++] = ' ';
    i += FUNC2(n/1000, zOut+i, nOut-i);
    FUNC0(nOut-i, zOut+i, " thousand");
    i += (int)FUNC1(zOut+i);
    n = n % 1000;
  }
  if( n>=100 ){
    if( i && i<nOut-1 ) zOut[i++] = ' ';
    FUNC0(nOut-i, zOut+i, "%s hundred", ones[n/100]);
    i += (int)FUNC1(zOut+i);
    n = n % 100;
  }
  if( n>=20 ){
    if( i && i<nOut-1 ) zOut[i++] = ' ';
    FUNC0(nOut-i, zOut+i, "%s", tens[n/10]);
    i += (int)FUNC1(zOut+i);
    n = n % 10;
  }
  if( n>0 ){
    if( i && i<nOut-1 ) zOut[i++] = ' ';
    FUNC0(nOut-i, zOut+i, "%s", ones[n]);
    i += (int)FUNC1(zOut+i);
  }
  if( i==0 ){
    FUNC0(nOut-i, zOut+i, "zero");
    i += (int)FUNC1(zOut+i);
  }
  return i;
}