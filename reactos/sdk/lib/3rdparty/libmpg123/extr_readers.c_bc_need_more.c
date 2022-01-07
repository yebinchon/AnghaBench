
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {scalar_t__ firstpos; scalar_t__ pos; scalar_t__ size; } ;
typedef int ssize_t ;


 int READER_MORE ;
 int debug3 (char*,long,long,long) ;

__attribute__((used)) static ssize_t bc_need_more(struct bufferchain *bc)
{
 debug3("hit end, back to beginning (%li - %li < %li)", (long)bc->size, (long)bc->pos, (long)bc->size);

 bc->pos = bc->firstpos;
 return READER_MORE;
}
