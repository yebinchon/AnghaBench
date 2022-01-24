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
typedef  int u64 ;
typedef  int u32 ;
typedef  int sqlite_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char const*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char const*,int,int,int,int,int) ; 

int FUNC2(const char *pBuf, sqlite_int64 *v){
  const unsigned char *p = (const unsigned char*)pBuf;
  const unsigned char *pStart = p;
  u32 a;
  u64 b;
  int shift;

  FUNC0(a, p, 0,  0x00,     0x80, *v, 1);
  FUNC1(a, p, 7,  0x7F,     0x4000, *v, 2);
  FUNC1(a, p, 14, 0x3FFF,   0x200000, *v, 3);
  FUNC1(a, p, 21, 0x1FFFFF, 0x10000000, *v, 4);
  b = (a & 0x0FFFFFFF );

  for(shift=28; shift<=63; shift+=7){
    u64 c = *p++;
    b += (c&0x7F) << shift;
    if( (c & 0x80)==0 ) break;
  }
  *v = b;
  return (int)(p - pStart);
}