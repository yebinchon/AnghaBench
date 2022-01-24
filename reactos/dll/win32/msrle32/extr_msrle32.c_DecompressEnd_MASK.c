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
struct TYPE_4__ {int /*<<< orphan*/ * palette_map; int /*<<< orphan*/  bDecompress; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ CodecInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  ICERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC3(CodecInfo *pi)
{
  FUNC1("(%p)\n",pi);

  /* pre-condition */
  FUNC2(pi != NULL);

  pi->bDecompress = FALSE;

  if (pi->palette_map != NULL) {
    FUNC0(pi->palette_map);
    pi->palette_map = NULL;
  }

  return ICERR_OK;
}