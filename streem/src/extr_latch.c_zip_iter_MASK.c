#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct zip_data {size_t i; size_t len; int /*<<< orphan*/  a; TYPE_1__** latch; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_9__ {struct zip_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  size_t strm_int ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int (*) (TYPE_1__*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * zip_start ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, strm_value data)
{
  struct zip_data* z = strm->data;

  FUNC0(z->a)[z->i++] = data;
  if (z->i < z->len) {
    FUNC3(z->latch[z->i], strm, zip_iter);
  }
  else {
    strm_int i;
    strm_int done = 0;

    for (i=0; i<z->len; i++){
      if (FUNC2(z->latch[i])) {
        done = 1;
        break;
      }
    }
    if (done) {
      FUNC1(strm, z->a, NULL);
      for (i=0; i<z->len; i++){
        FUNC4(z->latch[i]);
      }
      FUNC4(strm);
    }
    else {
      FUNC1(strm, z->a, zip_start);
    }
  }
  return STRM_OK;
}