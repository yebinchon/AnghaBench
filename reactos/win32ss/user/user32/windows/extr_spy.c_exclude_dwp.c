
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int SPY_MAX_MSGNUM ;
 int * spy_exclude ;

__attribute__((used)) static inline BOOL exclude_dwp(void)
{
    return spy_exclude[SPY_MAX_MSGNUM + 1];
}
