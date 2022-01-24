#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_Writer ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int strip; int status; void* data; int /*<<< orphan*/  writer; int /*<<< orphan*/ * L; } ;
struct TYPE_8__ {int /*<<< orphan*/  sizeupvalues; } ;
typedef  TYPE_1__ Proto ;
typedef  TYPE_2__ DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(lua_State *L, const Proto *f, lua_Writer w, void *data,
              int strip) {
  DumpState D;
  D.L = L;
  D.writer = w;
  D.data = data;
  D.strip = strip;
  D.status = 0;
  FUNC2(&D);
  FUNC0(f->sizeupvalues, &D);
  FUNC1(f, NULL, &D);
  return D.status;
}