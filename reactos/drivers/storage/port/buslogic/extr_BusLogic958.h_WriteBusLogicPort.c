
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UCHAR ;
typedef int PUCHAR ;


 int ScsiPortWritePortUchar (int ,int ) ;

__attribute__((used)) static VOID
WriteBusLogicPort(UCHAR data,
                  PUCHAR adr)
{
    ScsiPortWritePortUchar(adr, data);
}
