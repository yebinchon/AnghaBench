
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val_size; int arena; } ;
typedef TYPE_1__ stb_spmatrix ;


 TYPE_1__* stb__spmatrix_create () ;
 int stb_malloc_global (int) ;

stb_spmatrix *stb_sparse_ptr_matrix_new(int val_size)
{
   stb_spmatrix *m = stb__spmatrix_create();
   if (m) m->val_size = val_size;
   if (m) m->arena = stb_malloc_global(1);
   return m;
}
