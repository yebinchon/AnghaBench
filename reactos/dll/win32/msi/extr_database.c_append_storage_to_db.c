
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int transforms; } ;
struct TYPE_5__ {int entry; int * stg; } ;
typedef TYPE_1__ MSITRANSFORM ;
typedef TYPE_2__ MSIDATABASE ;
typedef int IStorage ;


 int IStorage_AddRef (int *) ;
 int list_add_head (int *,int *) ;
 TYPE_1__* msi_alloc (int) ;

void append_storage_to_db( MSIDATABASE *db, IStorage *stg )
{
    MSITRANSFORM *t;

    t = msi_alloc( sizeof *t );
    t->stg = stg;
    IStorage_AddRef( stg );
    list_add_head( &db->transforms, &t->entry );
}
