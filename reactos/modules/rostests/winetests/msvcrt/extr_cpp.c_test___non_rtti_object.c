
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char const* mangled; } ;
typedef TYPE_1__ type_info ;
struct TYPE_11__ {char const* name; int do_free; int * vtable; } ;
typedef TYPE_2__ exception ;
typedef int e2 ;
typedef int e ;


 int bAncientVersion ;
 char* call_func1 (void*,TYPE_2__*) ;
 TYPE_2__* call_func2 (void*,TYPE_2__*,...) ;
 int memset (TYPE_2__*,int,int) ;
 int ok (int,char*,...) ;
 TYPE_1__* p__RTtypeid (TYPE_2__*) ;
 int p__non_rtti_object_copy_ctor ;
 int p__non_rtti_object_ctor ;
 void* p__non_rtti_object_dtor ;
 int p__non_rtti_object_opequals ;
 void* p__non_rtti_object_scalar_dtor ;
 void* p__non_rtti_object_vector_dtor ;
 scalar_t__ p__non_rtti_object_vtable ;
 void* p__non_rtti_object_what ;
 void* pexception_default_ctor ;
 int * pexception_vtable ;
 int poperator_delete ;
 TYPE_2__* poperator_new (int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void test___non_rtti_object(void)
{
  static const char* e_name = "A __non_rtti_object name";
  char* name;
  exception e, e2, *pe;

  if (!poperator_new || !poperator_delete ||
      !p__non_rtti_object_ctor || !p__non_rtti_object_copy_ctor ||
      !p__non_rtti_object_dtor || !p__non_rtti_object_opequals || !p__non_rtti_object_what ||
      !p__non_rtti_object_vtable || !p__non_rtti_object_vector_dtor || !p__non_rtti_object_scalar_dtor)
    return;


  memset(&e, 0, sizeof(e));
  call_func2(p__non_rtti_object_ctor, &e, e_name);
  ok(e.vtable != ((void*)0), "Null __non_rtti_object vtable for e\n");
  ok(e.name && e.name != e_name && !strcmp(e.name, "A __non_rtti_object name"), "Bad name '%s' for e\n", e.name);
  ok(e.do_free == 1, "do_free set to %d for e\n", e.do_free);


  memset(&e2, 0, sizeof(e2));
  call_func2(p__non_rtti_object_copy_ctor, &e2, &e);
  ok(e2.vtable != ((void*)0), "Null __non_rtti_object vtable for e2\n");
  ok(e2.name && e2.name != e.name && !strcmp(e2.name, "A __non_rtti_object name"), "Bad name '%s' for e2\n", e2.name);
  ok(e2.do_free == 1, "do_free set to %d for e2\n", e2.do_free);
  ok(e.vtable == e2.vtable, "__non_rtti_object vtables differ!\n");


  call_func1(p__non_rtti_object_dtor, &e2);


  memset(&e2, 1, sizeof(e2));
  call_func1(pexception_default_ctor, &e2);
  pe = call_func2(p__non_rtti_object_opequals, &e2, &e);
  ok(e2.vtable != ((void*)0), "Null __non_rtti_object vtable for e2\n");
  ok(e2.name && e2.name != e.name && !strcmp(e2.name, "A __non_rtti_object name"), "Bad __non_rtti_object name for e2\n");
  ok(e2.do_free == 1, "do_free set to %d for e2\n", e2.do_free);
  ok(pe == &e2, "opequals didn't return e2\n");


  name = call_func1(p__non_rtti_object_what, &e2);
  ok(e2.name == name, "Bad __non_rtti_object name from e2::what()\n");


  ok(e2.vtable == pexception_vtable, "Bad vtable for e2\n");
  call_func1(p__non_rtti_object_dtor, &e2);


  pe = poperator_new(sizeof(exception));
  ok(pe != ((void*)0), "new() failed\n");
  if (pe)
  {
    call_func2(p__non_rtti_object_ctor, pe, e_name);

    call_func2(p__non_rtti_object_scalar_dtor, pe, 0);
    pe->name = ((void*)0);
    pe->do_free = 0;
    call_func2(p__non_rtti_object_scalar_dtor, pe, 1);
  }

  pe = poperator_new(sizeof(exception));
  ok(pe != ((void*)0), "new() failed\n");
  if (pe)
  {

    call_func2(p__non_rtti_object_ctor, pe, e_name);
    call_func2(p__non_rtti_object_vector_dtor, pe, 1);
  }

  pe = poperator_new(sizeof(exception) * 4 + sizeof(size_t));
  ok(pe != ((void*)0), "new() failed\n");
  if (pe)
  {

    *((size_t*)pe) = 3;
    pe = (exception*)((size_t*)pe + 1);
    call_func2(p__non_rtti_object_ctor, &pe[0], e_name);
    call_func2(p__non_rtti_object_ctor, &pe[1], e_name);
    call_func2(p__non_rtti_object_ctor, &pe[2], e_name);
    pe[3].name = 0;
    pe[3].do_free = 1;
    call_func2(p__non_rtti_object_vector_dtor, pe, 3);
  }


  pe = (void*)p__non_rtti_object_vtable;
  p__non_rtti_object_vector_dtor = (void*)pe->vtable;
  p__non_rtti_object_what = (void*)pe->name;

  name = call_func1(p__non_rtti_object_what, &e);
  ok(e.name == name, "Bad __non_rtti_object name from vtable e::what()\n");

  if (p__RTtypeid && !bAncientVersion)
  {

    type_info *ti = p__RTtypeid(&e);
    ok (ti != ((void*)0) && !strcmp(ti->mangled, ".?AV__non_rtti_object@@"), "bad rtti for e\n");
  }
  call_func2(p__non_rtti_object_vector_dtor, &e, 0);
}
