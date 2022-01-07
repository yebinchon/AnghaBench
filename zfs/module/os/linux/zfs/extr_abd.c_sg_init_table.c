
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int end; } ;


 int memset (struct scatterlist*,int ,int) ;

__attribute__((used)) static void
sg_init_table(struct scatterlist *sg, int nr)
{
 memset(sg, 0, nr * sizeof (struct scatterlist));
 sg[nr - 1].end = 1;
}
