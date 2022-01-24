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
struct TYPE_3__ {int /*<<< orphan*/  do_free; int /*<<< orphan*/ * name; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ exception ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSVCRT_exception_vtable ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(exception *_this, const char** name)
{
  _this->vtable = &MSVCRT_exception_vtable;
  if (*name)
  {
    size_t name_len = FUNC2(*name) + 1;
    _this->name = FUNC0(name_len);
    FUNC1(_this->name, *name, name_len);
    _this->do_free = TRUE;
  }
  else
  {
    _this->name = NULL;
    _this->do_free = FALSE;
  }
}