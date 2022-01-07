
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 char* AcpiUtPutNumber (char*,int ,int,int ) ;
 int FALSE ;

const char *
AcpiUtPrintNumber (
    char *String,
    UINT64 Number)
{
    char AsciiString[20];
    const char *Pos1;
    char *Pos2;


    Pos1 = AcpiUtPutNumber (AsciiString, Number, 10, FALSE);
    Pos2 = String;

    while (Pos1 != AsciiString)
    {
        *(Pos2++) = *(--Pos1);
    }

    *Pos2 = 0;
    return (String);
}
