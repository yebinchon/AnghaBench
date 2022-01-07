
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hypertable_id; } ;
struct TYPE_4__ {scalar_t__ table_id; TYPE_1__ fd; } ;
typedef TYPE_2__ Chunk ;



__attribute__((used)) static int
chunk_cmp(const void *ch1, const void *ch2)
{
 const Chunk *v1 = *((const Chunk **) ch1);
 const Chunk *v2 = *((const Chunk **) ch2);

 if (v1->fd.hypertable_id < v2->fd.hypertable_id)
  return -1;
 if (v1->fd.hypertable_id > v2->fd.hypertable_id)
  return 1;
 if (v1->table_id < v2->table_id)
  return -1;
 if (v1->table_id > v2->table_id)
  return 1;
 return 0;
}
