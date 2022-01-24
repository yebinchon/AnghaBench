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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOUBLE ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarCyFromR8 ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC1(DOUBLE);

#if defined(__i386__) && (defined(_MSC_VER) || defined(__GNUC__))
  /* Test our rounding is exactly the same. This fails if the special x86
   * code is taken out of VarCyFromR8.
   */
  CONVERT(VarCyFromR8, -461168601842738.7904); EXPECTCY64(0xbfffffff, 0xffffff23);
#endif

  FUNC0(VarCyFromR8, -4611686018427388416.1); EXPECT_OVERFLOW;
  FUNC0(VarCyFromR8, -1.0);                   FUNC2(-1);
  FUNC0(VarCyFromR8, -0.0);                   FUNC2(0);
  FUNC0(VarCyFromR8, 1.0);                    FUNC2(1);
  FUNC0(VarCyFromR8, 4611686018427387648.0);  EXPECT_OVERFLOW;

  /* Rounding */
  FUNC0(VarCyFromR8, -1.5f);     FUNC2(-1.5);
  FUNC0(VarCyFromR8, -0.6f);     FUNC2(-0.6);
  FUNC0(VarCyFromR8, -0.5f);     FUNC2(-0.5);
  FUNC0(VarCyFromR8, -0.4f);     FUNC2(-0.4);
  FUNC0(VarCyFromR8, 0.4f);      FUNC2(0.4);
  FUNC0(VarCyFromR8, 0.5f);      FUNC2(0.5);
  FUNC0(VarCyFromR8, 0.6f);      FUNC2(0.6);
  FUNC0(VarCyFromR8, 1.5f);      FUNC2(1.5);
  FUNC0(VarCyFromR8, 1.00009f);  FUNC2(1.0001);
  FUNC0(VarCyFromR8, -1.00001f); FUNC2(-1);
  FUNC0(VarCyFromR8, -1.00005f); FUNC2(-1);
  FUNC0(VarCyFromR8, -0.00009f); FUNC2(-0.0001);
  FUNC0(VarCyFromR8, -0.00005f); FUNC2(0);
  FUNC0(VarCyFromR8, -0.00001f); FUNC2(0);
  FUNC0(VarCyFromR8, 0.00001f);  FUNC2(0);
  FUNC0(VarCyFromR8, 0.00005f);  FUNC2(0);
  FUNC0(VarCyFromR8, 0.00009f);  FUNC2(0.0001);
  FUNC0(VarCyFromR8, -1.00001f); FUNC2(-1);
  FUNC0(VarCyFromR8, -1.00005f); FUNC2(-1);
  FUNC0(VarCyFromR8, -1.00009f); FUNC2(-1.0001);
}