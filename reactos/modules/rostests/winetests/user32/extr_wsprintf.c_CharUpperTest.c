
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int INT_PTR ;
typedef int BOOL ;


 scalar_t__ CharUpperA (int ) ;
 int FALSE ;
 int TRUE ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void CharUpperTest(void)
{
    INT_PTR i, out;
    BOOL failed = FALSE;

    for (i=0;i<256;i++)
     {
 out = (INT_PTR)CharUpperA((LPSTR)i);
 if ((out >> 16) != 0)
    {
           failed = TRUE;
    break;
    }
 }
    ok(!failed,"CharUpper failed - 16bit input (0x%0lx) returned 32bit result (0x%0lx)\n",i,out);
}
