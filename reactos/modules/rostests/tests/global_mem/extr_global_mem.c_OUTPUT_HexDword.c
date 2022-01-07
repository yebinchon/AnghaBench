
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int OUTPUT_Line (char*) ;
 int sprintf (char*,char*,int ) ;

void OUTPUT_HexDword(DWORD dw)
{
    char buffer[32];
    sprintf(buffer, "0x%lX",dw);
    OUTPUT_Line(buffer);
}
