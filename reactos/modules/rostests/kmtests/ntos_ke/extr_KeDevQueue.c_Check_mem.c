
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Check_mem(void* a, int n, int size)
{
    int i;
    for (i = 0; i < size; i++) {
        if (*((unsigned char*)a + i) != n) {
            return 0;
        }
    }
    return 1;
}
