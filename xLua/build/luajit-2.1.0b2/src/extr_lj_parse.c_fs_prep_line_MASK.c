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
struct TYPE_3__ {int pc; } ;
typedef  TYPE_1__ FuncState ;
typedef  int BCLine ;

/* Variables and functions */

__attribute__((used)) static size_t FUNC0(FuncState *fs, BCLine numline)
{
  return (fs->pc-1) << (numline < 256 ? 0 : numline < 65536 ? 1 : 2);
}