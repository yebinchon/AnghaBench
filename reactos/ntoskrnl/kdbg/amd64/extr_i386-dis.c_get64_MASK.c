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
typedef  int bfd_vma ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ codep ; 
 int /*<<< orphan*/  the_info ; 

__attribute__((used)) static bfd_vma
FUNC2 ()
{
  bfd_vma x;
#ifdef BFD64
  unsigned int a;
  unsigned int b;

  FETCH_DATA (the_info, codep + 8);
  a = *codep++ & 0xff;
  a |= (*codep++ & 0xff) << 8;
  a |= (*codep++ & 0xff) << 16;
  a |= (*codep++ & 0xff) << 24;
  b = *codep++ & 0xff;
  b |= (*codep++ & 0xff) << 8;
  b |= (*codep++ & 0xff) << 16;
  b |= (*codep++ & 0xff) << 24;
  x = a + ((bfd_vma) b << 32);
#else
  FUNC1 ();
  x = 0;
#endif
  return x;
}