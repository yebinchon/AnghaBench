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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  storage1 ; 

int FUNC7(unsigned char *buffer, int length)
{
   unsigned char *storage2;
   int c_len = FUNC4(storage1, buffer, length);
   int dc_len;
   FUNC3("Compressed %d to %d\n", length, c_len);
   dc_len = FUNC6(storage1);
   storage2 = FUNC1(dc_len);
   dc_len = FUNC5(storage2, storage1, c_len);
   if (dc_len != length) { FUNC0(storage2); return -1; }
   if (FUNC2(buffer, storage2, length) != 0) { FUNC0(storage2); return -1; }
   FUNC0(storage2);
   return c_len;
}