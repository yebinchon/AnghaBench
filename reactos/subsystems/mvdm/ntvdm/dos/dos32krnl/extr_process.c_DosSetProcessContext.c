
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_2__ {int DiskTransferArea; int CurrentPsp; } ;


 int MAKELONG (int,int ) ;
 TYPE_1__* Sda ;

VOID DosSetProcessContext(WORD Segment)
{
    Sda->CurrentPsp = Segment;
    Sda->DiskTransferArea = MAKELONG(0x80, Segment);
}
