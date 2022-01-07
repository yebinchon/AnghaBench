
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {scalar_t__ pos; scalar_t__ size; } ;



size_t bc_fill(struct bufferchain *bc)
{
 return (size_t)(bc->size - bc->pos);
}
