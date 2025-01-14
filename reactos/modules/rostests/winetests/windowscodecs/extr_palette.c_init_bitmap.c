
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BYTE ;


 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int trace (char*,int,int,int) ;

__attribute__((used)) static BYTE *init_bitmap(UINT *width, UINT *height, UINT *stride)
{
    BYTE *src;
    UINT i, j, scale;

    *width = 256;
    *height = 256;
    *stride = (*width * 3 + 3) & ~3;
    trace("width %d, height %d, stride %d\n", *width, *height, *stride);

    src = HeapAlloc(GetProcessHeap(), 0, *stride * *height);

    scale = 256 / *width;
    if (!scale) scale = 1;

    for (i = 0; i < *height; i++)
    {
        for (j = 0; j < *width; j++)
        {
            src[i * *stride + j*3 + 0] = scale * i;
            src[i * *stride + j*3 + 1] = scale * (255 - (i+j)/2);
            src[i * *stride + j*3 + 2] = scale * j;
        }
    }

    return src;
}
