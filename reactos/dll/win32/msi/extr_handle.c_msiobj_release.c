
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ magic; int (* destructor ) (TYPE_1__*) ;int refcount; } ;
typedef TYPE_1__ MSIOBJECTHDR ;


 int ERR (char*) ;
 int InterlockedDecrement (int *) ;
 scalar_t__ MSIHANDLE_MAGIC ;
 int TRACE (char*,TYPE_1__*) ;
 int msi_free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

int msiobj_release( MSIOBJECTHDR *info )
{
    int ret;

    if( !info )
        return -1;

    if( info->magic != MSIHANDLE_MAGIC )
    {
        ERR("Invalid handle!\n");
        return -1;
    }

    ret = InterlockedDecrement( &info->refcount );
    if( ret==0 )
    {
        if( info->destructor )
            info->destructor( info );
        msi_free( info );
        TRACE("object %p destroyed\n", info);
    }

    return ret;
}
