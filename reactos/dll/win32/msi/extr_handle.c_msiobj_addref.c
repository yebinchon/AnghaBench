
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; int refcount; } ;
typedef TYPE_1__ MSIOBJECTHDR ;


 int ERR (char*) ;
 int InterlockedIncrement (int *) ;
 scalar_t__ MSIHANDLE_MAGIC ;

void msiobj_addref( MSIOBJECTHDR *info )
{
    if( !info )
        return;

    if( info->magic != MSIHANDLE_MAGIC )
    {
        ERR("Invalid handle!\n");
        return;
    }

    InterlockedIncrement(&info->refcount);
}
