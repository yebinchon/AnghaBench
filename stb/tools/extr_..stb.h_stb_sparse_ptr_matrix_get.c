
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int val_size; int arena; } ;
typedef TYPE_1__ stb_spmatrix ;
struct TYPE_9__ {void* member_0; void* member_1; } ;
typedef TYPE_2__ stb__ptrpair ;


 int memset (void*,int ,int ) ;
 int stb__spmatrix_add (TYPE_1__*,TYPE_2__,void*) ;
 void* stb__spmatrix_get (TYPE_1__*,TYPE_2__) ;
 void* stb_malloc_raw (int ,int ) ;

void *stb_sparse_ptr_matrix_get(stb_spmatrix *z, void *a, void *b, int create)
{
   stb__ptrpair t = { a,b };
   void *data = stb__spmatrix_get(z, t);
   if (!data && create) {
      data = stb_malloc_raw(z->arena, z->val_size);
      if (!data) return ((void*)0);
      memset(data, 0, z->val_size);
      stb__spmatrix_add(z, t, data);
   }
   return data;
}
