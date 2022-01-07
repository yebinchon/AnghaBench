
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ BYTE ;


 int RAND (int *) ;

__attribute__((used)) static void RAND_bufferMaxSymb(U32* seed, void* ptr, size_t size, int maxSymb)
{
    size_t i;
    BYTE* op = ptr;

    for (i = 0; i < size; i++) {
        op[i] = (BYTE) (RAND(seed) % (maxSymb + 1));
    }
}
