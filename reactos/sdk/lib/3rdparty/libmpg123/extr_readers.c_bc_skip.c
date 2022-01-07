
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {scalar_t__ size; scalar_t__ pos; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ READER_ERROR ;
 scalar_t__ bc_need_more (struct bufferchain*) ;

__attribute__((used)) static ssize_t bc_skip(struct bufferchain *bc, ssize_t count)
{
 if(count >= 0)
 {
  if(bc->size - bc->pos < count) return bc_need_more(bc);
  else return bc->pos += count;
 }
 else return READER_ERROR;
}
