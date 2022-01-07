
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int BYTE ;


 int MEM_writeLE32 (int*,int) ;
 int RAND (int *) ;

__attribute__((used)) static void RAND_buffer(U32* seed, void* ptr, size_t size)
{
    size_t i;
    BYTE* op = ptr;

    for (i = 0; i + 4 <= size; i += 4) {
        MEM_writeLE32(op + i, RAND(seed));
    }
    for (; i < size; i++) {
        op[i] = RAND(seed) & 0xff;
    }
}
