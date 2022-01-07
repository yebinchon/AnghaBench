
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void printBytes(const char *heading, const BYTE *pb, size_t cb)
{
    size_t i;
    printf("%s: ",heading);
    for(i=0;i<cb;i++)
        printf("0x%02x,",pb[i]);
    putchar('\n');
}
