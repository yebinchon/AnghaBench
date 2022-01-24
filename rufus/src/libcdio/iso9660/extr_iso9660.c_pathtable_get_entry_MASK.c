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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void iso_path_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static const iso_path_table_t *
FUNC2 (const void *pt, unsigned int entrynum)
{
  const uint8_t *tmp = pt;
  unsigned int offset = 0;
  unsigned int count = 0;

  FUNC0 (pt != NULL);

  while (FUNC1 (*tmp))
    {
      if (count == entrynum)
        break;

      FUNC0 (count < entrynum);

      offset += sizeof (iso_path_table_t);
      offset += FUNC1 (*tmp);
      if (offset % 2)
        offset++;
      tmp = (uint8_t *)pt + offset;
      count++;
    }

  if (!FUNC1 (*tmp))
    return NULL;

  return (const void *) tmp;
}