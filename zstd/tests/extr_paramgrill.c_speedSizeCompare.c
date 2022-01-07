
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cSpeed; scalar_t__ cSize; } ;
typedef TYPE_1__ BMK_benchResult_t ;


 int BETTER_RESULT ;
 int SIZE_RESULT ;
 int SPEED_RESULT ;
 int WORSE_RESULT ;

__attribute__((used)) static int
speedSizeCompare(const BMK_benchResult_t r1, const BMK_benchResult_t r2)
{
    if(r1.cSpeed < r2.cSpeed) {
        if(r1.cSize >= r2.cSize) {
            return BETTER_RESULT;
        }
        return SPEED_RESULT;
    } else {
        if(r1.cSize <= r2.cSize) {
            return WORSE_RESULT;
        }
        return SIZE_RESULT;
    }
}
