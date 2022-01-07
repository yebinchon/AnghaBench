
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_ulong_val(unsigned int val, int vt)
{
    switch(vt) {
    case 130:
    case 132:
    case 128:
        return val & 0xffff;
    case 131:
    case 129:
        return val & 0xff;
    }

    return val;
}
