
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PDWORD ;
typedef int HDC ;
typedef int DWORD ;


 int GetPixel (int ,int,int) ;

void
ReadBits(HDC hDC, PDWORD OutBits)
{
    int x,y;

    for (y = 0; y < 8; y++)
    {
        DWORD Row = 0;
        for (x = 0; x < 8; x++)
            Row |= (0x80 & GetPixel(hDC, 2 + x, 3 + y)) >> x;
        OutBits[y] = Row;
    }
}
