
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;


 scalar_t__* YesNoTable ;
 scalar_t__ toupper (scalar_t__) ;

WORD DosIfCharYesNo(WORD Char)
{
    Char = toupper(Char);


    if (Char == YesNoTable[1])
        return 0x0000;

    if (Char == YesNoTable[0])
        return 0x0001;

        return 0x0002;
}
