
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cSpeed; int dSpeed; size_t cMem; size_t cSize; } ;
struct TYPE_5__ {int params; TYPE_1__ result; } ;
typedef TYPE_2__ winnerInfo_t ;
typedef int paramValues_t ;



__attribute__((used)) static winnerInfo_t initWinnerInfo(const paramValues_t p)
{
    winnerInfo_t w1;
    w1.result.cSpeed = 0.;
    w1.result.dSpeed = 0.;
    w1.result.cMem = (size_t)-1;
    w1.result.cSize = (size_t)-1;
    w1.params = p;
    return w1;
}
