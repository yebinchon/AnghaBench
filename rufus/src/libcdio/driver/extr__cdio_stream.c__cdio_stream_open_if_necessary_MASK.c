#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ (* open ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int is_open; scalar_t__ position; int /*<<< orphan*/  user_data; TYPE_1__ op; } ;
typedef  TYPE_2__ CdioDataSource_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(CdioDataSource_t *p_obj)
{
  if (!p_obj) return false;

  if (!p_obj->is_open) {
    if (p_obj->op.open(p_obj->user_data)) {
      FUNC1 ("could not open input stream...");
      return false;
    } else {
      FUNC0 ("opened source...");
      p_obj->is_open = 1;
      p_obj->position = 0;
    }
  }
  return true;
}