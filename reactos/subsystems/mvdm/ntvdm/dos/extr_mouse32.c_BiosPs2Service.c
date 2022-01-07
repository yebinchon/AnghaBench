
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;
typedef int UCHAR ;


 int BIOS_MISC_INTERRUPT ;
 int Int32Call (int *,int ) ;
 int MouseContext ;
 int getAX () ;
 int setAH (int) ;
 int setAL (int ) ;
 int setAX (int ) ;

VOID BiosPs2Service(UCHAR Function)
{

    USHORT AX = getAX();
    setAL(Function);


    setAH(0xC2);
    Int32Call(&MouseContext, BIOS_MISC_INTERRUPT);



    setAX(AX);
}
