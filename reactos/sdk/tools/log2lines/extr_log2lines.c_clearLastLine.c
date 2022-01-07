
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LINEINFO ;


 int lastLine ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
clearLastLine(void)
{
    memset(&lastLine, 0, sizeof(LINEINFO));
}
