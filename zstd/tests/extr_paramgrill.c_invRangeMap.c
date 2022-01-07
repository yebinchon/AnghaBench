
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t varInds_t ;
typedef scalar_t__ U32 ;


 int DISPLAY (char*) ;
 int MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (int ,int ) ;

 int TLEN_RANGE ;
 int assert (int ) ;



 int * maxtable ;
 scalar_t__* mintable ;




 scalar_t__* tlen_table ;


__attribute__((used)) static int invRangeMap(varInds_t param, U32 value)
{
    value = MIN(MAX(mintable[param], value), maxtable[param]);
    switch(param) {
        case 128:
        case 135:
        case 133:
        case 131:
        case 132:
        case 130:
            return (int)(value - mintable[param]);
        case 129:
        {
            int lo = 0;
            int hi = TLEN_RANGE;
            while(lo < hi) {
                int mid = (lo + hi) / 2;
                if(tlen_table[mid] < value) {
                    lo = mid + 1;
                } if(tlen_table[mid] == value) {
                    return mid;
                } else {
                    hi = mid;
                }
            }
            return lo;
        }
        case 134:
            return (int)value + 1;
        case 136:
        default:;
    }
    DISPLAY("Error, not a valid param\n ");
    assert(0);
    return -2;
}
