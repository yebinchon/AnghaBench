
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int capacity; int ptr; } ;
typedef TYPE_1__ buffer_t ;
typedef int FILE ;


 size_t fread (int ,int,int ,int *) ;

__attribute__((used)) static void fillBuffer_fromHandle(buffer_t* buff, FILE* f)
{
    size_t const readSize = fread(buff->ptr, 1, buff->capacity, f);
    buff->size = readSize;
}
