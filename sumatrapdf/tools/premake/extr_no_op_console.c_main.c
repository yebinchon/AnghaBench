
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,char**) ;

int main(int argc, char **argv) {
    printf("This is just a dummy program to satisfy premake. argc: %d, argv: %p\n", argc, argv);
    return 0;
}
