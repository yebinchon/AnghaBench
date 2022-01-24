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
struct zip_data {int /*<<< orphan*/ * latch; int /*<<< orphan*/  len; int /*<<< orphan*/  a; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct zip_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zip_iter ; 

__attribute__((used)) static int
FUNC2(strm_stream* strm, strm_value data)
{
  struct zip_data* z = strm->data;

  if (z) {
    z->i = 0;
    z->a = FUNC0(NULL, z->len);
    FUNC1(z->latch[0], strm, zip_iter);
  }
  return STRM_OK;
}