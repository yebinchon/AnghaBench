
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int * ctime (int*) ;
 int ok (int ,char*) ;

void Test_ctime()
{

    time_t time;
    time = -15;
    ok(ctime(&time) == ((void*)0), "ctime doesn't return NULL for invalid parameters\n");
    time = -5000000;
    ok(ctime(&time) == ((void*)0), "ctime doesn't return NULL for invalid parameters\n");
}
