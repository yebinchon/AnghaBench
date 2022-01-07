
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;


 unsigned char FC_DOUBLE ;
 unsigned char FC_FLOAT ;
 unsigned char FC_HYPER ;
 unsigned char FC_LONG ;
 unsigned char FC_SHORT ;
 unsigned char FC_SMALL ;
 unsigned char FC_ULONG ;
 unsigned char FC_USHORT ;
 unsigned char FC_USMALL ;
__attribute__((used)) static unsigned char get_base_type(VARTYPE vt)
{
    switch (vt)
    {
    case 139: return FC_SMALL;
    case 143:
    case 138: return FC_SHORT;
    case 135:
    case 141:
    case 140:
    case 137: return FC_LONG;
    case 136:
    case 129: return FC_HYPER;
    case 132: return FC_USMALL;
    case 131: return FC_USHORT;
    case 128:
    case 130: return FC_ULONG;
    case 134: return FC_FLOAT;
    case 142:
    case 133: return FC_DOUBLE;
    default: return 0;
    }
}
