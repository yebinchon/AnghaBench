
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct bb_struct_u64_list {int dummy; } ;
typedef int errcode_t ;
typedef int blk64_t ;
typedef TYPE_1__* bb_u64_list ;
struct TYPE_5__ {int size; int num; int * list; int magic; } ;


 int BB_ET_MAGIC_BADBLOCKS_LIST ;
 int BB_ET_NO_MEMORY ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static errcode_t make_u64_list(int size, int num, uint64_t *list, bb_u64_list *ret)
{
 bb_u64_list bb;

 bb = calloc(1, sizeof(struct bb_struct_u64_list));
 if (bb == ((void*)0))
  return BB_ET_NO_MEMORY;
 bb->magic = BB_ET_MAGIC_BADBLOCKS_LIST;
 bb->size = size ? size : 10;
 bb->num = num;
 bb->list = malloc(sizeof(blk64_t) * bb->size);
 if (bb->list == ((void*)0)) {
  free(bb);
  bb = ((void*)0);
  return BB_ET_NO_MEMORY;
 }
 if (list)
  memcpy(bb->list, list, bb->size * sizeof(blk64_t));
 else
  memset(bb->list, 0, bb->size * sizeof(blk64_t));
 *ret = bb;
 return 0;
}
