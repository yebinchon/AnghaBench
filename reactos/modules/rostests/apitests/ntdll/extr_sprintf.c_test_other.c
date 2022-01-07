
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok_str (char*,char*) ;
 int sprintf (char*,char*,char*) ;

void
test_other()
{
    char buffer[128];

    sprintf(buffer, "%lI64wQ", "test");
    ok_str(buffer, "Q");

}
