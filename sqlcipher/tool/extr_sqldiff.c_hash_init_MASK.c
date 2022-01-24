#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct TYPE_3__ {char* z; size_t a; size_t b; scalar_t__ i; } ;
typedef  TYPE_1__ hash ;

/* Variables and functions */
 size_t NHASH ; 

__attribute__((used)) static void FUNC0(hash *pHash, const char *z){
  u16 a, b, i;
  a = b = 0;
  for(i=0; i<NHASH; i++){
    a += z[i];
    b += (NHASH-i)*z[i];
    pHash->z[i] = z[i];
  }
  pHash->a = a & 0xffff;
  pHash->b = b & 0xffff;
  pHash->i = 0;
}