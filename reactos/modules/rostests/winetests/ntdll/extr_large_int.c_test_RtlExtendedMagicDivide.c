
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ a; scalar_t__ b; scalar_t__ result; int shift; } ;
typedef scalar_t__ LONGLONG ;


 int NB_MAGIC_DIVIDE ;
 TYPE_1__* magic_divide ;
 int ok (int,char*,int ,int ,int ,int ,int ) ;
 scalar_t__ pRtlExtendedMagicDivide (scalar_t__,scalar_t__,int ) ;
 int wine_dbgstr_longlong (scalar_t__) ;

__attribute__((used)) static void test_RtlExtendedMagicDivide(void)
{
    int i;
    LONGLONG result;

    for (i = 0; i < NB_MAGIC_DIVIDE; i++) {
 result = pRtlExtendedMagicDivide(magic_divide[i].a, magic_divide[i].b, magic_divide[i].shift);
 ok(result == magic_divide[i].result,
           "call failed: RtlExtendedMagicDivide(0x%s, 0x%s, %d) has result 0x%s, expected 0x%s\n",
    wine_dbgstr_longlong(magic_divide[i].a), wine_dbgstr_longlong(magic_divide[i].b), magic_divide[i].shift,
       wine_dbgstr_longlong(result), wine_dbgstr_longlong(magic_divide[i].result));
    }
}
