
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int block_t ;


 int * GetAccess (int *) ;
 int * vlc_stream_ReadBlock (int *) ;

__attribute__((used)) static block_t *Block(stream_t *access, bool *restrict eof)
{
    stream_t *a = GetAccess(access);
    if (a == ((void*)0))
    {
        *eof = 1;
        return ((void*)0);
    }

    return vlc_stream_ReadBlock(a);
}
