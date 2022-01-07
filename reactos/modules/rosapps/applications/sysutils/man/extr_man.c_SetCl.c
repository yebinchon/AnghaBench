
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleTextAttribute (int ,int ) ;

void
SetCl(WORD cl)
{
 SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE),cl);
}
