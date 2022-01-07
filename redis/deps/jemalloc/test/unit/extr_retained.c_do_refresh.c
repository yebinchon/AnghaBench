
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int epoch ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,int *,int *,void*,int) ;

__attribute__((used)) static void
do_refresh(void) {
 uint64_t epoch = 1;
 assert_d_eq(mallctl("epoch", ((void*)0), ((void*)0), (void *)&epoch,
     sizeof(epoch)), 0, "Unexpected mallctl() failure");
}
