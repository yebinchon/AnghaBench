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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ src ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
  DWORD crc = 0;

  if (!&pRtlComputeCrc32)
  {
    FUNC2("RtlComputeCrc32 is not available\n");
    return;
  }

  crc = FUNC1(crc, (const BYTE *)src, LEN);
  FUNC0(crc == 0x40861dc2,"Expected 0x40861dc2, got %8x\n", crc);
}