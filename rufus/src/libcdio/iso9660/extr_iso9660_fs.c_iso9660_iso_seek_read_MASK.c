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
typedef  int /*<<< orphan*/  lsn_t ;
typedef  int /*<<< orphan*/  iso9660_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISO_BLOCKSIZE ; 
 long FUNC0 (int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 

long int
FUNC1 (const iso9660_t *p_iso, void *ptr, lsn_t start,
		       long int size)
{
  return FUNC0(p_iso, ptr, start, size, ISO_BLOCKSIZE);
}