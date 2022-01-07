
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;


 int T_BYTES (int) ;
 scalar_t__ T_ENDIAN16 (int) ;
 scalar_t__ T_FLOAT (int) ;

__attribute__((used)) static
int FormatterPos(cmsUInt32Number frm)
{
    cmsUInt32Number b = T_BYTES(frm);

    if (b == 0 && T_FLOAT(frm))
        return 5;

    if (b == 2 && T_FLOAT(frm))
        return 3;

    if (b == 4 && T_FLOAT(frm))
        return 4;
    if (b == 2 && !T_FLOAT(frm))
        return 1;
    if (b == 1 && !T_FLOAT(frm))
        return 0;
    if (b == 2 && T_ENDIAN16(frm))
        return 3;
    return -1;
}
