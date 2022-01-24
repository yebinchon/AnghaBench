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
typedef  int /*<<< orphan*/  SIZE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEN ; 
 char* dest ; 
 int /*<<< orphan*/  pRtlCompareMemory ; 
 char* src ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
  SIZE_T size;

  if (!pRtlCompareMemory)
  {
    FUNC2("RtlCompareMemory is not available\n");
    return;
  }

  FUNC1(dest, src);

  FUNC0(src,src,0,0);
  FUNC0(src,src,LEN,LEN);
  dest[0] = 'x';
  FUNC0(src,dest,LEN,0);
}