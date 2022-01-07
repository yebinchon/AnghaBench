
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int nExpectedNotify ;
 int nUnexpectedNotify ;
 int ok (int,char*,int) ;
 int * unexpectedNotify ;

__attribute__((used)) static void dont_expect_notify(INT iCode)
{
    ok(nExpectedNotify < 10, "notification count %d\n", nExpectedNotify);
    if (nExpectedNotify < 10)
        unexpectedNotify[nUnexpectedNotify++] = iCode;
}
