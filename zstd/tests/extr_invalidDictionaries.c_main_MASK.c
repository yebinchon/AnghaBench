#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ dictionary ;
typedef  int /*<<< orphan*/  ZSTD_DDict ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* dictionaries ; 

int FUNC4(int argc, const char** argv) {
  const dictionary *dict;
  for (dict = dictionaries; dict->data != NULL; ++dict) {
    ZSTD_CDict *cdict;
    ZSTD_DDict *ddict;
    cdict = FUNC0(dict->data, dict->size, 1);
    if (cdict) {
      FUNC2(cdict);
      return 1;
    }
    ddict = FUNC1(dict->data, dict->size);
    if (ddict) {
      FUNC3(ddict);
      return 2;
    }
  }

  (void)argc;
  (void)argv;
  return 0;
}