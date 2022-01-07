
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int PropertyTagTypeByte ;




 int PropertyTagTypeShort ;
 int PropertyTagTypeUndefined ;

__attribute__((used)) static UINT documented_type(UINT type)
{
    switch (type)
    {
    case 129: return PropertyTagTypeByte;
    case 128: return PropertyTagTypeShort;
    case 130: return PropertyTagTypeUndefined;
    case 131: return PropertyTagTypeUndefined;
    default: return type;
    }
}
