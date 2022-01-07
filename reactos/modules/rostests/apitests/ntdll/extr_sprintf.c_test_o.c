
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int ok_str (int *,char*) ;
 int sprintf (int *,char*,int) ;

void
test_o()
{
    TCHAR buffer[64];

    sprintf(buffer, "%o", 1234);
    ok_str(buffer, "2322");

    sprintf(buffer, "%o", -1234);
    ok_str(buffer, "37777775456");

}
