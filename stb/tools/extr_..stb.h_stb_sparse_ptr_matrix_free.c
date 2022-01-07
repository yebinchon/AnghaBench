
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ arena; } ;
typedef TYPE_1__ stb_spmatrix ;


 int stb__spmatrix_destroy (TYPE_1__*) ;
 int stb_free (scalar_t__) ;

void stb_sparse_ptr_matrix_free(stb_spmatrix *z)
{
   if (z->arena) stb_free(z->arena);
   stb__spmatrix_destroy(z);
}
