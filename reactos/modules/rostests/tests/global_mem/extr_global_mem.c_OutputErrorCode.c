
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLastError () ;
 int OUTPUT_Line (char*) ;
 int sprintf (char*,char*,int ) ;

void OutputErrorCode()
{
    char buffer[256];

    sprintf(buffer,"GetLastError() returned %lu", GetLastError());

    OUTPUT_Line(buffer);
}
