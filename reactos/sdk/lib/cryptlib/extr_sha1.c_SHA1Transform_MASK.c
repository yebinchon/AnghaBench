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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(ULONG State[5], UCHAR Buffer[64])
{
   ULONG a, b, c, d, e;
   ULONG *Block;

   Block = (ULONG*)Buffer;

   /* Copy Context->State[] to working variables */
   a = State[0];
   b = State[1];
   c = State[2];
   d = State[3];
   e = State[4];

   /* 4 rounds of 20 operations each. Loop unrolled. */
   FUNC0(a,b,c,d,e, 0); FUNC0(e,a,b,c,d, 1); FUNC0(d,e,a,b,c, 2); FUNC0(c,d,e,a,b, 3);
   FUNC0(b,c,d,e,a, 4); FUNC0(a,b,c,d,e, 5); FUNC0(e,a,b,c,d, 6); FUNC0(d,e,a,b,c, 7);
   FUNC0(c,d,e,a,b, 8); FUNC0(b,c,d,e,a, 9); FUNC0(a,b,c,d,e,10); FUNC0(e,a,b,c,d,11);
   FUNC0(d,e,a,b,c,12); FUNC0(c,d,e,a,b,13); FUNC0(b,c,d,e,a,14); FUNC0(a,b,c,d,e,15);
   FUNC1(e,a,b,c,d,16); FUNC1(d,e,a,b,c,17); FUNC1(c,d,e,a,b,18); FUNC1(b,c,d,e,a,19);
   FUNC2(a,b,c,d,e,20); FUNC2(e,a,b,c,d,21); FUNC2(d,e,a,b,c,22); FUNC2(c,d,e,a,b,23);
   FUNC2(b,c,d,e,a,24); FUNC2(a,b,c,d,e,25); FUNC2(e,a,b,c,d,26); FUNC2(d,e,a,b,c,27);
   FUNC2(c,d,e,a,b,28); FUNC2(b,c,d,e,a,29); FUNC2(a,b,c,d,e,30); FUNC2(e,a,b,c,d,31);
   FUNC2(d,e,a,b,c,32); FUNC2(c,d,e,a,b,33); FUNC2(b,c,d,e,a,34); FUNC2(a,b,c,d,e,35);
   FUNC2(e,a,b,c,d,36); FUNC2(d,e,a,b,c,37); FUNC2(c,d,e,a,b,38); FUNC2(b,c,d,e,a,39);
   FUNC3(a,b,c,d,e,40); FUNC3(e,a,b,c,d,41); FUNC3(d,e,a,b,c,42); FUNC3(c,d,e,a,b,43);
   FUNC3(b,c,d,e,a,44); FUNC3(a,b,c,d,e,45); FUNC3(e,a,b,c,d,46); FUNC3(d,e,a,b,c,47);
   FUNC3(c,d,e,a,b,48); FUNC3(b,c,d,e,a,49); FUNC3(a,b,c,d,e,50); FUNC3(e,a,b,c,d,51);
   FUNC3(d,e,a,b,c,52); FUNC3(c,d,e,a,b,53); FUNC3(b,c,d,e,a,54); FUNC3(a,b,c,d,e,55);
   FUNC3(e,a,b,c,d,56); FUNC3(d,e,a,b,c,57); FUNC3(c,d,e,a,b,58); FUNC3(b,c,d,e,a,59);
   FUNC4(a,b,c,d,e,60); FUNC4(e,a,b,c,d,61); FUNC4(d,e,a,b,c,62); FUNC4(c,d,e,a,b,63);
   FUNC4(b,c,d,e,a,64); FUNC4(a,b,c,d,e,65); FUNC4(e,a,b,c,d,66); FUNC4(d,e,a,b,c,67);
   FUNC4(c,d,e,a,b,68); FUNC4(b,c,d,e,a,69); FUNC4(a,b,c,d,e,70); FUNC4(e,a,b,c,d,71);
   FUNC4(d,e,a,b,c,72); FUNC4(c,d,e,a,b,73); FUNC4(b,c,d,e,a,74); FUNC4(a,b,c,d,e,75);
   FUNC4(e,a,b,c,d,76); FUNC4(d,e,a,b,c,77); FUNC4(c,d,e,a,b,78); FUNC4(b,c,d,e,a,79);

   /* Add the working variables back into Context->State[] */
   State[0] += a;
   State[1] += b;
   State[2] += c;
   State[3] += d;
   State[4] += e;

   /* Wipe variables */
   a = b = c = d = e = 0;
}