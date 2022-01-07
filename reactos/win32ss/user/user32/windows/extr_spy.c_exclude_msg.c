
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BOOL ;


 int SPY_MAX_MSGNUM ;
 size_t min (int ,int ) ;
 int * spy_exclude ;

__attribute__((used)) static inline BOOL exclude_msg( UINT msg )
{
    return spy_exclude[ min( msg, SPY_MAX_MSGNUM ) ];
}
