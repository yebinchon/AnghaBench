
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {scalar_t__ fileoff; scalar_t__ firstpos; scalar_t__ pos; scalar_t__ size; int * first; int * last; } ;



__attribute__((used)) static void bc_init(struct bufferchain *bc)
{
 bc->first = ((void*)0);
 bc->last = bc->first;
 bc->size = 0;
 bc->pos = 0;
 bc->firstpos = 0;
 bc->fileoff = 0;
}
