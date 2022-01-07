
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int USHORT ;
struct TYPE_2__ {int VideoPage; } ;
typedef int CHAR ;


 int BIOS_VIDEO_INTERRUPT ;
 TYPE_1__* Bda ;
 int BiosContext ;
 int DEFAULT_ATTRIBUTE ;
 int Int32Call (int *,int ) ;
 int getAX () ;
 int getBX () ;
 int setAH (int) ;
 int setAL (int ) ;
 int setAX (int ) ;
 int setBH (int ) ;
 int setBL (int ) ;
 int setBX (int ) ;

__attribute__((used)) static VOID BiosCharPrint(CHAR Character)
{

    USHORT AX = getAX();
    USHORT BX = getBX();







    setAL(Character);
    setBL(DEFAULT_ATTRIBUTE);
    setBH(Bda->VideoPage);


    setAH(0x0E);
    Int32Call(&BiosContext, BIOS_VIDEO_INTERRUPT);


    setBX(BX);
    setAX(AX);
}
