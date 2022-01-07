
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbElements; } ;
typedef scalar_t__ SF_TYPE ;
typedef TYPE_1__* LPSAFEARRAY ;
typedef int DWORD ;


 scalar_t__ SF_BSTR ;

__attribute__((used)) static DWORD elem_wire_size(LPSAFEARRAY lpsa, SF_TYPE sftype)
{
    if (sftype == SF_BSTR)
        return sizeof(DWORD);
    else
        return lpsa->cbElements;
}
