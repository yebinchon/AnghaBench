
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* EngAllocMem (int ,int,int ) ;
 int TAG_FREETYPE ;

void *
malloc(size_t Size)
{
    void *Object;

    Object = EngAllocMem(0, sizeof(size_t) + Size, TAG_FREETYPE);
    if (Object != ((void*)0))
    {
        *((size_t *)Object) = Size;
        Object = (void *)((size_t *)Object + 1);
    }

    return Object;
}
