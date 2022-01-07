
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void dump_array16(int array[], int size)
{
    int i;
    --size;
    for (i = 0; i < size; ++i) {
        printf("0x%04x,", array[i]);
        if (!((i + 1) & 0x7)) {
            printf("\n    ");
        } else {
            printf(" ");
        }
    }
    printf("0x%04x\n};\n\n", array[size]);
}
