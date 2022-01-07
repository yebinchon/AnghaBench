
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PACKAGE_VERSION ;
 int printf (char*,...) ;

void print_version(void) {
    char jit = '-';
    char lzma = '-';
    char zlib = '-';
    printf("ag version %s\n\n", PACKAGE_VERSION);
    printf("Features:\n");
    printf("  %cjit %clzma %czlib\n", jit, lzma, zlib);
}
