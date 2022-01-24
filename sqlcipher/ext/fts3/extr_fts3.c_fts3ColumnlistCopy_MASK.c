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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(char **pp, char **ppPoslist){
  char *pEnd = *ppPoslist;
  char c = 0;

  /* A column-list is terminated by either a 0x01 or 0x00 byte that is
  ** not part of a multi-byte varint.
  */
  while( 0xFE & (*pEnd | c) ){
    c = *pEnd++ & 0x80;
    FUNC1( c!=0 && ((*pEnd)&0xfe)==0 );
  }
  if( pp ){
    int n = (int)(pEnd - *ppPoslist);
    char *p = *pp;
    FUNC0(p, *ppPoslist, n);
    p += n;
    *pp = p;
  }
  *ppPoslist = pEnd;
}