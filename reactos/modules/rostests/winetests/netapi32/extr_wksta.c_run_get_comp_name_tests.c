
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;


 scalar_t__ NERR_Success ;
 int computer_name ;
 int lstrcmpW (int ,int *) ;
 int ok (int,char*) ;
 int pNetApiBufferFree (int *) ;
 scalar_t__ pNetpGetComputerName (int **) ;

__attribute__((used)) static void run_get_comp_name_tests(void)
{
    LPWSTR ws = ((void*)0);

    ok(pNetpGetComputerName(&ws) == NERR_Success, "Computer name is retrieved\n");
    ok(!lstrcmpW(computer_name, ws), "This is really computer name\n");
    pNetApiBufferFree(ws);
}
