
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExitProcess (int) ;
 int printf (char*) ;

__attribute__((used)) static void test__popen_child(void)
{


    printf("child output\n");
    ExitProcess(0x37);
}
