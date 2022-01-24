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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  name; int /*<<< orphan*/  extent; int /*<<< orphan*/  name_len; } ;
typedef  TYPE_1__ iso_path_table_t ;

/* Variables and functions */
 scalar_t__ ISO_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

uint16_t
FUNC11 (void *pt,
                               const char name[],
                               uint32_t extent,
                               uint16_t parent)
{
  iso_path_table_t *ipt =
    (iso_path_table_t *)((char *)pt + FUNC2 (pt));
  size_t name_len = FUNC7 (name) ? FUNC7 (name) : 1;
  unsigned int entrynum = 0;

  FUNC0 (FUNC2 (pt) < ISO_BLOCKSIZE); /*fixme */

  FUNC4 (ipt, 0, sizeof (iso_path_table_t) + name_len); /* paranoia */

  ipt->name_len = FUNC8 (name_len);
  ipt->extent = FUNC10 (extent);
  ipt->parent = FUNC9 (parent);
  FUNC3 (ipt->name, name, name_len);

  FUNC6 (pt, NULL, &entrynum);

  if (entrynum > 1)
    {
      const iso_path_table_t *ipt2
        = FUNC5 (pt, entrynum - 2);

      FUNC0 (ipt2 != NULL);

      FUNC0 (FUNC1 (ipt2->parent) <= parent);
    }

  return entrynum;
}