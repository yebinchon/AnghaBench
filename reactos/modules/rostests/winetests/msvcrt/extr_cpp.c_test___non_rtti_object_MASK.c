#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char const* mangled; } ;
typedef  TYPE_1__ type_info ;
struct TYPE_11__ {char const* name; int do_free; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_2__ exception ;
typedef  int /*<<< orphan*/  e2 ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  bAncientVersion ; 
 char* FUNC0 (void*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (void*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  p__non_rtti_object_copy_ctor ; 
 int /*<<< orphan*/  p__non_rtti_object_ctor ; 
 void* p__non_rtti_object_dtor ; 
 int /*<<< orphan*/  p__non_rtti_object_opequals ; 
 void* p__non_rtti_object_scalar_dtor ; 
 void* p__non_rtti_object_vector_dtor ; 
 scalar_t__ p__non_rtti_object_vtable ; 
 void* p__non_rtti_object_what ; 
 void* pexception_default_ctor ; 
 int /*<<< orphan*/ * pexception_vtable ; 
 int /*<<< orphan*/  poperator_delete ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
  static const char* e_name = "A __non_rtti_object name";
  char* name;
  exception e, e2, *pe;

  if (!&poperator_new || !poperator_delete ||
      !p__non_rtti_object_ctor || !p__non_rtti_object_copy_ctor ||
      !p__non_rtti_object_dtor || !p__non_rtti_object_opequals || !p__non_rtti_object_what ||
      !p__non_rtti_object_vtable || !p__non_rtti_object_vector_dtor || !p__non_rtti_object_scalar_dtor)
    return;

  /* 'const char*' ctor */
  FUNC2(&e, 0, sizeof(e));
  FUNC1(p__non_rtti_object_ctor, &e, e_name);
  FUNC3(e.vtable != NULL, "Null __non_rtti_object vtable for e\n");
  FUNC3(e.name && e.name != e_name && !FUNC6(e.name, "A __non_rtti_object name"), "Bad name '%s' for e\n", e.name);
  FUNC3(e.do_free == 1, "do_free set to %d for e\n", e.do_free);

  /* Copy ctor */
  FUNC2(&e2, 0, sizeof(e2));
  FUNC1(p__non_rtti_object_copy_ctor, &e2, &e);
  FUNC3(e2.vtable != NULL, "Null __non_rtti_object vtable for e2\n");
  FUNC3(e2.name && e2.name != e.name && !FUNC6(e2.name, "A __non_rtti_object name"), "Bad name '%s' for e2\n", e2.name);
  FUNC3(e2.do_free == 1, "do_free set to %d for e2\n", e2.do_free);
  FUNC3(e.vtable == e2.vtable, "__non_rtti_object vtables differ!\n");

  /* Test calling the dtors */
  FUNC0(p__non_rtti_object_dtor, &e2);

  /* Operator equals */
  FUNC2(&e2, 1, sizeof(e2));
  FUNC0(pexception_default_ctor, &e2);
  pe = FUNC1(p__non_rtti_object_opequals, &e2, &e);
  FUNC3(e2.vtable != NULL, "Null __non_rtti_object vtable for e2\n");
  FUNC3(e2.name && e2.name != e.name && !FUNC6(e2.name, "A __non_rtti_object name"), "Bad __non_rtti_object name for e2\n");
  FUNC3(e2.do_free == 1, "do_free set to %d for e2\n", e2.do_free);
  FUNC3(pe == &e2, "opequals didn't return e2\n");

  /* what() */
  name = FUNC0(p__non_rtti_object_what, &e2);
  FUNC3(e2.name == name, "Bad __non_rtti_object name from e2::what()\n");

  /* vtable ptr */
  FUNC3(e2.vtable == pexception_vtable, "Bad vtable for e2\n");
  FUNC0(p__non_rtti_object_dtor, &e2);

  /* new() */
  pe = FUNC5(sizeof(exception));
  FUNC3(pe != NULL, "new() failed\n");
  if (pe)
  {
    FUNC1(p__non_rtti_object_ctor, pe, e_name);
    /* scalar dtor */
    FUNC1(p__non_rtti_object_scalar_dtor, pe, 0); /* Shouldn't delete pe */
    pe->name = NULL;
    pe->do_free = 0;
    FUNC1(p__non_rtti_object_scalar_dtor, pe, 1); /* Should delete pe */
  }

  pe = FUNC5(sizeof(exception));
  FUNC3(pe != NULL, "new() failed\n");
  if (pe)
  {
    /* vector dtor, single element */
    FUNC1(p__non_rtti_object_ctor, pe, e_name);
    FUNC1(p__non_rtti_object_vector_dtor, pe, 1); /* Should delete pe as single element*/
  }

  pe = FUNC5(sizeof(exception) * 4 + sizeof(size_t));
  FUNC3(pe != NULL, "new() failed\n");
  if (pe)
  {
    /* vector dtor, multiple elements */
    *((size_t*)pe) = 3;
    pe = (exception*)((size_t*)pe + 1);
    FUNC1(p__non_rtti_object_ctor, &pe[0], e_name);
    FUNC1(p__non_rtti_object_ctor, &pe[1], e_name);
    FUNC1(p__non_rtti_object_ctor, &pe[2], e_name);
    pe[3].name = 0;
    pe[3].do_free = 1; /* Crash if we try to free this element */
    FUNC1(p__non_rtti_object_vector_dtor, pe, 3); /* Should delete all 3 and then pe block */
  }

  /* test our exported vtable is kosher */
  pe = (void*)p__non_rtti_object_vtable; /* Use the exception struct to get vtable ptrs */
  p__non_rtti_object_vector_dtor = (void*)pe->vtable;
  p__non_rtti_object_what = (void*)pe->name;

  name = FUNC0(p__non_rtti_object_what, &e);
  FUNC3(e.name == name, "Bad __non_rtti_object name from vtable e::what()\n");

  if (&p__RTtypeid && !bAncientVersion)
  {
    /* Check the rtti */
    type_info *ti = FUNC4(&e);
    FUNC3 (ti != NULL && !FUNC6(ti->mangled, ".?AV__non_rtti_object@@"), "bad rtti for e\n");
  }
  FUNC1(p__non_rtti_object_vector_dtor, &e, 0); /* Should delete e.name, but not e */
}