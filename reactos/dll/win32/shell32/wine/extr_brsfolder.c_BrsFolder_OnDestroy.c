
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * layout; } ;
typedef TYPE_1__ browse_info ;
typedef int INT ;


 int SHFree (int *) ;

__attribute__((used)) static INT BrsFolder_OnDestroy(browse_info *info)
{
    if (info->layout)
    {
        SHFree(info->layout);
        info->layout = ((void*)0);
    }

    return 0;
}
