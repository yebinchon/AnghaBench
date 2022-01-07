
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PUCHAR ;


 int ScsiPortReadPortUchar (int ) ;

__attribute__((used)) static UCHAR
ReadBusLogicPort(PUCHAR adr )
{
    return ScsiPortReadPortUchar( adr );
}
