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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ a ; 
 scalar_t__ b ; 
 scalar_t__ c ; 
 scalar_t__ d ; 
 scalar_t__ e ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,...) ; 

void FUNC7(unsigned int state[5], const unsigned char buffer[64]){
  unsigned int qq[5]; /* a, b, c, d, e; */
  static int one = 1;
  unsigned int block[16];
  FUNC6(block, buffer, 64);
  FUNC6(qq,state,5*sizeof(unsigned int));

  /* Copy g.cx.state[] to working vars */
  /*
  a = state[0];
  b = state[1];
  c = state[2];
  d = state[3];
  e = state[4];
  */

  /* 4 rounds of 20 operations each. Loop unrolled. */
  if( 1 == *(unsigned char*)&one ){
    FUNC5(a,b,c,d,e, 0); FUNC5(e,a,b,c,d, 1); FUNC5(d,e,a,b,c, 2); FUNC5(c,d,e,a,b, 3);
    FUNC5(b,c,d,e,a, 4); FUNC5(a,b,c,d,e, 5); FUNC5(e,a,b,c,d, 6); FUNC5(d,e,a,b,c, 7);
    FUNC5(c,d,e,a,b, 8); FUNC5(b,c,d,e,a, 9); FUNC5(a,b,c,d,e,10); FUNC5(e,a,b,c,d,11);
    FUNC5(d,e,a,b,c,12); FUNC5(c,d,e,a,b,13); FUNC5(b,c,d,e,a,14); FUNC5(a,b,c,d,e,15);
  }else{
    FUNC4(a,b,c,d,e, 0); FUNC4(e,a,b,c,d, 1); FUNC4(d,e,a,b,c, 2); FUNC4(c,d,e,a,b, 3);
    FUNC4(b,c,d,e,a, 4); FUNC4(a,b,c,d,e, 5); FUNC4(e,a,b,c,d, 6); FUNC4(d,e,a,b,c, 7);
    FUNC4(c,d,e,a,b, 8); FUNC4(b,c,d,e,a, 9); FUNC4(a,b,c,d,e,10); FUNC4(e,a,b,c,d,11);
    FUNC4(d,e,a,b,c,12); FUNC4(c,d,e,a,b,13); FUNC4(b,c,d,e,a,14); FUNC4(a,b,c,d,e,15);
  }
  FUNC0(e,a,b,c,d,16); FUNC0(d,e,a,b,c,17); FUNC0(c,d,e,a,b,18); FUNC0(b,c,d,e,a,19);
  FUNC1(a,b,c,d,e,20); FUNC1(e,a,b,c,d,21); FUNC1(d,e,a,b,c,22); FUNC1(c,d,e,a,b,23);
  FUNC1(b,c,d,e,a,24); FUNC1(a,b,c,d,e,25); FUNC1(e,a,b,c,d,26); FUNC1(d,e,a,b,c,27);
  FUNC1(c,d,e,a,b,28); FUNC1(b,c,d,e,a,29); FUNC1(a,b,c,d,e,30); FUNC1(e,a,b,c,d,31);
  FUNC1(d,e,a,b,c,32); FUNC1(c,d,e,a,b,33); FUNC1(b,c,d,e,a,34); FUNC1(a,b,c,d,e,35);
  FUNC1(e,a,b,c,d,36); FUNC1(d,e,a,b,c,37); FUNC1(c,d,e,a,b,38); FUNC1(b,c,d,e,a,39);
  FUNC2(a,b,c,d,e,40); FUNC2(e,a,b,c,d,41); FUNC2(d,e,a,b,c,42); FUNC2(c,d,e,a,b,43);
  FUNC2(b,c,d,e,a,44); FUNC2(a,b,c,d,e,45); FUNC2(e,a,b,c,d,46); FUNC2(d,e,a,b,c,47);
  FUNC2(c,d,e,a,b,48); FUNC2(b,c,d,e,a,49); FUNC2(a,b,c,d,e,50); FUNC2(e,a,b,c,d,51);
  FUNC2(d,e,a,b,c,52); FUNC2(c,d,e,a,b,53); FUNC2(b,c,d,e,a,54); FUNC2(a,b,c,d,e,55);
  FUNC2(e,a,b,c,d,56); FUNC2(d,e,a,b,c,57); FUNC2(c,d,e,a,b,58); FUNC2(b,c,d,e,a,59);
  FUNC3(a,b,c,d,e,60); FUNC3(e,a,b,c,d,61); FUNC3(d,e,a,b,c,62); FUNC3(c,d,e,a,b,63);
  FUNC3(b,c,d,e,a,64); FUNC3(a,b,c,d,e,65); FUNC3(e,a,b,c,d,66); FUNC3(d,e,a,b,c,67);
  FUNC3(c,d,e,a,b,68); FUNC3(b,c,d,e,a,69); FUNC3(a,b,c,d,e,70); FUNC3(e,a,b,c,d,71);
  FUNC3(d,e,a,b,c,72); FUNC3(c,d,e,a,b,73); FUNC3(b,c,d,e,a,74); FUNC3(a,b,c,d,e,75);
  FUNC3(e,a,b,c,d,76); FUNC3(d,e,a,b,c,77); FUNC3(c,d,e,a,b,78); FUNC3(b,c,d,e,a,79);

  /* Add the working vars back into context.state[] */
  state[0] += a;
  state[1] += b;
  state[2] += c;
  state[3] += d;
  state[4] += e;
}