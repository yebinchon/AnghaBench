
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int * CursorPosition; } ;
typedef int * PBYTE ;
typedef size_t BYTE ;


 TYPE_1__* Bda ;
 int HIBYTE (int ) ;
 int LOBYTE (int ) ;

__attribute__((used)) static __inline VOID VidBiosGetCursorPosition(PBYTE Row, PBYTE Column, BYTE Page)
{
    *Row = HIBYTE(Bda->CursorPosition[Page]);
    *Column = LOBYTE(Bda->CursorPosition[Page]);
}
