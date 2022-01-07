
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int OUTPUT_Line (char*) ;
 int sprintf (char*,char*,int ) ;

void OUTPUT_Handle(HANDLE h)
{
    char buffer[32];
    sprintf(buffer, "0x%p", h);
    OUTPUT_Line(buffer);
}
