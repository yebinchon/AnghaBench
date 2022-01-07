
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int sqliterkPagenoHeaderOffset(int pageno)
{
    if (pageno == 1) {
        return 100;
    }
    return 0;
}
