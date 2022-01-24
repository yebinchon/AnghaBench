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
typedef  int /*<<< orphan*/  VARIANTARG ;
typedef  int LONG64 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_TYPETEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_I8 ; 
 int /*<<< orphan*/  V_I8 ; 
 int /*<<< orphan*/  has_i8 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
  HRESULT hres;
  LONG64 in;
  VARIANTARG vSrc, vDst;

  if (!has_i8)
  {
    FUNC1("I8 and UI8 data types are not available\n");
    return;
  }

  in = 1;

  FUNC0(VT_I8, V_I8);
  COMMON_TYPETEST;
}