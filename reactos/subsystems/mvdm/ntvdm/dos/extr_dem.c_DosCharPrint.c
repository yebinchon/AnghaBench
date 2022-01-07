
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int CHAR ;


 int DOS_OUTPUT_HANDLE ;
 int DosPrintCharacter (int ,int ) ;

VOID DosCharPrint(CHAR Character)
{
    DosPrintCharacter(DOS_OUTPUT_HANDLE, Character);
}
