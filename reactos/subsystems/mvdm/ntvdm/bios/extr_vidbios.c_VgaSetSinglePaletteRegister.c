
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int BYTE ;


 int IOReadB (int ) ;
 int IOWriteB (int ,int ) ;
 int VGA_AC_INDEX ;
 int VGA_AC_WRITE ;
 int VGA_INSTAT1_READ ;

__attribute__((used)) static __inline VOID VgaSetSinglePaletteRegister(BYTE Index, BYTE Value)
{

    IOReadB(VGA_INSTAT1_READ);
    IOWriteB(VGA_AC_INDEX, Index);


    IOWriteB(VGA_AC_WRITE, Value);
}
