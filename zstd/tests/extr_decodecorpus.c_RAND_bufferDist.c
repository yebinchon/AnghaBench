
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int BYTE ;


 size_t DISTSIZE ;
 size_t RAND (int *) ;

__attribute__((used)) static void RAND_bufferDist(U32* seed, BYTE* dist, void* ptr, size_t size)
{
    size_t i;
    BYTE* op = ptr;

    for (i = 0; i < size; i++) {
        op[i] = dist[RAND(seed) % DISTSIZE];
    }
}
