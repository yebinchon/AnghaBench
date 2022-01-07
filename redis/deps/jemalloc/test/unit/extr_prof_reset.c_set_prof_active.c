
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int active ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,int *,int *,void*,int) ;

__attribute__((used)) static void
set_prof_active(bool active) {
 assert_d_eq(mallctl("prof.active", ((void*)0), ((void*)0), (void *)&active,
     sizeof(active)), 0, "Unexpected mallctl failure");
}
