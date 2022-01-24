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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* (* reader ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ;size_t n; char const* p; int /*<<< orphan*/  data; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ ZIO ;

/* Variables and functions */
 int EOZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

int FUNC4 (ZIO *z) {
  size_t size;
  lua_State *L = z->L;
  const char *buff;
  FUNC2(L);
  buff = z->reader(L, z->data, &size);
  FUNC1(L);
  if (buff == NULL || size == 0) return EOZ;
  z->n = size - 1;
  z->p = buff;
  return FUNC0(*(z->p++));
}