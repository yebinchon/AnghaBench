
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST ;
typedef int COMMTIMEOUTS ;


 int ReadIntervalTimeout ;
 int ReadTotalTimeoutConstant ;
 int ReadTotalTimeoutMultiplier ;
 int WriteTotalTimeoutConstant ;
 int WriteTotalTimeoutMultiplier ;
 int check_timeouts_member (int ) ;

__attribute__((used)) static void check_timeouts(const char *function, const TEST *ptest, int initial_value, const COMMTIMEOUTS *ptimeouts1, const COMMTIMEOUTS *ptimeouts2)
{
 check_timeouts_member(ReadIntervalTimeout);
 check_timeouts_member(ReadTotalTimeoutMultiplier);
 check_timeouts_member(ReadTotalTimeoutConstant);
 check_timeouts_member(WriteTotalTimeoutMultiplier);
 check_timeouts_member(WriteTotalTimeoutConstant);
}
