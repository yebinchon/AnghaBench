
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ stbds_string_block ;
struct TYPE_7__ {TYPE_1__* storage; } ;
typedef TYPE_2__ stbds_string_arena ;


 int STBDS_FREE (int *,TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;

void stbds_strreset(stbds_string_arena *a)
{
  stbds_string_block *x,*y;
  x = a->storage;
  while (x) {
    y = x->next;
    STBDS_FREE(((void*)0), x);
    x = y;
  }
  memset(a, 0, sizeof(*a));
}
