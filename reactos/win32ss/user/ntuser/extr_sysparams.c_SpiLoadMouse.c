
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int INT ;


 int KEY_MOUSE ;
 int SpiLoadInt (int ,int ,int ) ;

__attribute__((used)) static
INT
SpiLoadMouse(PCWSTR pwszValue, INT iValue)
{
    return SpiLoadInt(KEY_MOUSE, pwszValue, iValue);
}
