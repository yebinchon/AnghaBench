#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ a; scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
typedef  TYPE_1__ D3DXCOLOR ;
typedef  int BOOL ;

/* Variables and functions */
 float FUNC0 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC1(D3DXCOLOR a, D3DXCOLOR b, float epsilon)
{
  return (FUNC0(a.r - b.r) < epsilon && FUNC0(a.g - b.g) < epsilon && FUNC0(a.b - b.b) < epsilon &&
          FUNC0(a.a - b.a) < epsilon);
}