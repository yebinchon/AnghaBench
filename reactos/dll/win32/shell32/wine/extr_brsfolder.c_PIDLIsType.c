
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef scalar_t__ PIDLTYPE ;
typedef TYPE_1__* LPPIDLDATA ;
typedef int LPCITEMIDLIST ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__* _ILGetDataPointer (int ) ;

__attribute__((used)) static inline BOOL PIDLIsType(LPCITEMIDLIST pidl, PIDLTYPE type)
{
    LPPIDLDATA data = _ILGetDataPointer(pidl);
    if (!data)
        return FALSE;
    return (data->type == type);
}
