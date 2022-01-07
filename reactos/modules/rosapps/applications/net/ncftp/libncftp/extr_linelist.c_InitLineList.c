
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LineListPtr ;
typedef int LineList ;


 int memset (int ,int ,int) ;

void
InitLineList(LineListPtr list)
{
 (void) memset(list, 0, sizeof(LineList));
}
