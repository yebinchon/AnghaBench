
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; int ret; } ;
typedef int HRESULT ;


 scalar_t__ CH_ENDTEST ;
 TYPE_1__* expectCall ;

__attribute__((used)) static HRESULT get_expected_ret(void)
{
    HRESULT hr = expectCall->ret;
    if (expectCall->id != CH_ENDTEST) expectCall++;
    return hr;
}
