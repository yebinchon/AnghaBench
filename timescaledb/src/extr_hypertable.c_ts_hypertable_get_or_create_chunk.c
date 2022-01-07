
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Point ;
typedef int Hypertable ;
typedef int Chunk ;


 int * hypertable_get_chunk (int *,int *,int) ;

Chunk *
ts_hypertable_get_or_create_chunk(Hypertable *h, Point *point)
{
 return hypertable_get_chunk(h, point, 1);
}
