
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_opt {int changed; } ;
struct ref {scalar_t__* id; int valid; } ;


 int WATCH_REFS ;

__attribute__((used)) static bool
cleanup_refs(void *data, void *ref_)
{
 struct ref_opt *opt = data;
 struct ref *ref = ref_;

 if (!ref->valid) {
  ref->id[0] = 0;
  opt->changed |= WATCH_REFS;
 }

 return 1;
}
