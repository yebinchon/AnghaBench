
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST ;
typedef int DCB ;
typedef int COMMTIMEOUTS ;
typedef int BOOL ;


 int BuildCommDCBAndTimeoutsA (char const*,int *,int *) ;
 int SetLastError (int) ;
 int check_dcb (char*,int const*,int,int *,int const*) ;
 int check_result (char*,int const*,int,int ) ;
 int check_timeouts (char*,int const*,int,int *,int const*) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void test_BuildCommDCBAndTimeoutsA(const char *string, const TEST *ptest, int initial_value, const DCB *pexpected_dcb, const COMMTIMEOUTS *pexpected_timeouts)
{
 BOOL result;
 DCB dcb;
 COMMTIMEOUTS timeouts;


 memset(&dcb, initial_value, sizeof(DCB));
 memset(&timeouts, initial_value, sizeof(COMMTIMEOUTS));
 SetLastError(0xdeadbeef);

 result = BuildCommDCBAndTimeoutsA(string, &dcb, &timeouts);


 check_result("BuildCommDCBAndTimeoutsA", ptest, initial_value, result);
 check_dcb("BuildCommDCBAndTimeoutsA", ptest, initial_value, &dcb, pexpected_dcb);
 check_timeouts("BuildCommDCBAndTimeoutsA", ptest, initial_value, &timeouts, pexpected_timeouts);
}
