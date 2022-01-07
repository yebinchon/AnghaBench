
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; int max_elements; int num_elements; } ;
typedef TYPE_1__ uint64_vec ;


 int AssertInt64Eq (int ,int) ;
 int AssertPtrEq (int ,int *) ;
 int CurrentMemoryContext ;
 int uint64_vec_append (TYPE_1__*,int) ;
 int * uint64_vec_at (TYPE_1__*,int) ;
 int uint64_vec_free_data (TYPE_1__*) ;
 int uint64_vec_init (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
uint64_vec_test(void)
{
 uint64_vec vec;
 int i;
 uint64_vec_init(&vec, CurrentMemoryContext, 100);
 for (i = 0; i < 30; i++)
  uint64_vec_append(&vec, i + 3);

 AssertInt64Eq(vec.num_elements, 30);
 AssertInt64Eq(vec.max_elements, 100);
 for (i = 0; i < 30; i++)
  AssertInt64Eq(*uint64_vec_at(&vec, i), i + 3);

 uint64_vec_free_data(&vec);
 AssertInt64Eq(vec.num_elements, 0);
 AssertInt64Eq(vec.max_elements, 0);
 AssertPtrEq(vec.data, ((void*)0));
}
