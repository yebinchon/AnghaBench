
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chunk_t ;


 int * calloc (int,int) ;

__attribute__((used)) static inline chunk_t* chunk_new()
{
    chunk_t* chunk = calloc(1, sizeof(chunk_t));
    return chunk;
}
