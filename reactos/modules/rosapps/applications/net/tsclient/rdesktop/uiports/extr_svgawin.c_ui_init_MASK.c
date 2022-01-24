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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  tcursor ;

/* Variables and functions */
 int /*<<< orphan*/ * desk_save ; 
 int g_server_Bpp ; 
 int /*<<< orphan*/  mcursor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(void)
{
  FUNC1();
  FUNC0(&mcursor, 0, sizeof(tcursor));
  desk_save = (uint8*)FUNC2(0x38400 * g_server_Bpp);
  return 1;
}