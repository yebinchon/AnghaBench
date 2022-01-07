
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_object {int obj; } ;
typedef int REOBJECT ;


 int ME_CopyReObject (int *,int const*,int ) ;
 int REO_GETOBJ_ALL_INTERFACES ;
 int WARN (char*) ;
 struct re_object* heap_alloc (int) ;

__attribute__((used)) static struct re_object* create_re_object(const REOBJECT *reo)
{
  struct re_object *reobj = heap_alloc(sizeof(*reobj));

  if (!reobj)
  {
    WARN("Fail to allocate re_object.\n");
    return ((void*)0);
  }
  ME_CopyReObject(&reobj->obj, reo, REO_GETOBJ_ALL_INTERFACES);
  return reobj;
}
