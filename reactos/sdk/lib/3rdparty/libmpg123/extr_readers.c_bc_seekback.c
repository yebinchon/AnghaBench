
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {scalar_t__ pos; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ READER_ERROR ;

__attribute__((used)) static ssize_t bc_seekback(struct bufferchain *bc, ssize_t count)
{
 if(count >= 0 && count <= bc->pos) return bc->pos -= count;
 else return READER_ERROR;
}
