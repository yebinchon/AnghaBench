
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* EngAllocMem (int ,int,int ) ;
 int EngFreeMem (size_t*) ;
 int TAG_FREETYPE ;
 int memcpy (void*,void*,size_t) ;

void *
realloc(void *Object, size_t Size)
{
    void *NewObject;
    size_t CopySize;

    NewObject = EngAllocMem(0, sizeof(size_t) + Size, TAG_FREETYPE);
    if (NewObject != ((void*)0))
    {
        *((size_t *)NewObject) = Size;
        NewObject = (void *)((size_t *)NewObject + 1);
        CopySize = *((size_t *)Object - 1);
        if (Size < CopySize)
        {
            CopySize = Size;
        }
        memcpy(NewObject, Object, CopySize);
        EngFreeMem((size_t *)Object - 1);
    }

    return NewObject;
}
