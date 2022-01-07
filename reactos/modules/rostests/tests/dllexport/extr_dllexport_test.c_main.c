
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CdeclFunc0 () ;
 int CdeclFunc1 (char*) ;
 int CdeclFunc2 (char*) ;
 int CdeclFunc3 (char*) ;
 int DataItem1 ;
 int DataItem2 ;
 int DataItem3 ;
 int DecoratedFastcallFunc1 (char*) ;
 int DecoratedFastcallFunc2 (char*) ;
 int DecoratedFastcallFunc4 (char*) ;
 int DecoratedFastcallFunc5 (char*) ;
 int DecoratedStdcallFunc1 (char*) ;
 int DecoratedStdcallFunc2 (char*) ;
 int DecoratedStdcallFunc4 (char*) ;
 int DecoratedStdcallFunc5 (char*) ;
 int FastcallFunc0 () ;
 int FastcallFunc1 (char*) ;
 int FastcallFunc2 (char*) ;
 int FastcallFunc3 (char*) ;
 int FastcallFunc4 (char*) ;
 int FastcallFunc5 (char*) ;
 int StdcallFunc0 () ;
 int StdcallFunc1 (char*) ;
 int StdcallFunc2 (char*) ;
 int StdcallFunc3 (char*) ;
 int StdcallFunc4 (char*) ;
 int StdcallFunc5 (char*) ;
 int ok_int (int ,int) ;
 int printf (char*) ;

int main(int argc, char *argv[])
{
    char* str = "defaultstring";

    if (argc > 2)
        str = argv[1];

    ok_int(CdeclFunc0(), 0);
    ok_int(CdeclFunc1(str), 1);
    ok_int(CdeclFunc2(str), 1);
    ok_int(CdeclFunc3(str), 0x10001);

    ok_int(StdcallFunc0(), 0x10);
    ok_int(StdcallFunc1(str), 0x11);
    ok_int(StdcallFunc2(str), 0x11);
    ok_int(StdcallFunc3(str), 0x10011);



    ok_int(StdcallFunc5(str), 0x10021);
    ok_int(FastcallFunc0(), 0x30);
    ok_int(FastcallFunc1(str), 0x31);
    ok_int(FastcallFunc2(str), 0x31);
    ok_int(FastcallFunc3(str), 0x10031);
    ok_int(DataItem1, 0x51);
    ok_int(DataItem2, 0x51);
    ok_int(DataItem3, 0x10051);

    printf("done.\n");

    return 0;
}
