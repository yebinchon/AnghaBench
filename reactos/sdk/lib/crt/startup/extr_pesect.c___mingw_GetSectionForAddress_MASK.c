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
typedef  int /*<<< orphan*/ * PIMAGE_SECTION_HEADER ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ LPVOID ;
typedef  scalar_t__ DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  __ImageBase ; 

PIMAGE_SECTION_HEADER
FUNC2 (LPVOID p)
{
  PBYTE pImageBase;
  DWORD_PTR rva;

  pImageBase = (PBYTE) &__ImageBase;
  if (! FUNC1 (pImageBase))
    return NULL;

  rva = (DWORD_PTR) (((PBYTE) p) - pImageBase);
  return FUNC0 (pImageBase, rva);
}