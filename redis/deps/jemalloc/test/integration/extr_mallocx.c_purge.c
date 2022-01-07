
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,int *,int *,int *,int ) ;

__attribute__((used)) static void
purge(void) {
 assert_d_eq(mallctl("arena.0.purge", ((void*)0), ((void*)0), ((void*)0), 0), 0,
     "Unexpected mallctl error");
}
