
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST ;
typedef int DCB ;
typedef int BOOL ;


 int BuildCommDCBA (char const*,int *) ;
 int SetLastError (int) ;
 int check_dcb (char*,int const*,int,int *,int const*) ;
 int check_result (char*,int const*,int,int ) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void test_BuildCommDCBA(const char *string, const TEST *ptest, int initial_value, const DCB *pexpected_dcb)
{
 BOOL result;
 DCB dcb;


 memset(&dcb, initial_value, sizeof(DCB));
 SetLastError(0xdeadbeef);

 result = BuildCommDCBA(string, &dcb);


 check_result("BuildCommDCBA", ptest, initial_value, result);
 check_dcb("BuildCommDCBA", ptest, initial_value, &dcb, pexpected_dcb);
}
