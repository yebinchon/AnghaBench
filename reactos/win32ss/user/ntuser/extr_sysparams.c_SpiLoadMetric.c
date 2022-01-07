
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int INT ;


 int KEY_METRIC ;
 int METRIC2REG (int ) ;
 int REG2METRIC (int ) ;
 int SpiLoadInt (int ,int ,int ) ;
 int TRACE (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static
INT
SpiLoadMetric(PCWSTR pwszValue, INT iValue)
{
    INT iRegVal;

    iRegVal = SpiLoadInt(KEY_METRIC, pwszValue, METRIC2REG(iValue));
    TRACE("Loaded metric setting '%S', iValue=%d(reg:%d), ret=%d(reg:%d)\n",
           pwszValue, iValue, METRIC2REG(iValue), REG2METRIC(iRegVal), iRegVal);
    return REG2METRIC(iRegVal);
}
