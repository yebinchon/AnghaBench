
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;
typedef size_t BYTE ;



__attribute__((used)) static UINT read_table_int( BYTE *const *data, UINT row, UINT col, UINT bytes )
{
    UINT ret = 0, i;

    for (i = 0; i < bytes; i++)
        ret += data[row][col + i] << i * 8;

    return ret;
}
