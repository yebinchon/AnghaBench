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

  /* The end of a position list is marked by a zero encoded as an FTS3 
  ** varint. A single POS_END (0) byte. Except, if the 0 byte is preceded by
  ** a byte with the 0x80 bit set, then it is not a varint 0, but the tail
  ** of some other, multi-byte, value.
  **
  ** The following while-loop moves pEnd to point to the first byte that is not 
  ** immediately preceded by a byte with the 0x80 bit set. Then increments
  ** pEnd once more so that it points to the byte immediately following the
  ** last byte in the position-list.
  */
  while( *pEnd | c ){
    c = *pEnd++ & 0x80;
    FUNC1( c!=0 && (*pEnd)==0 );
  }
  pEnd++;  /* Advance past the POS_END terminator byte */

  if( pp ){
    int n = (int)(pEnd - *ppPoslist);
    char *p = *pp;
    FUNC0(p, *ppPoslist, n);
    p += n;
    *pp = p;
  }
  *ppPoslist = pEnd;
}