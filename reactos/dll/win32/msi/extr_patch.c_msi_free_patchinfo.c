
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* localfile; struct TYPE_4__* filename; struct TYPE_4__* transforms; struct TYPE_4__* products; struct TYPE_4__* patchcode; } ;
typedef TYPE_1__ MSIPATCHINFO ;


 int msi_free (TYPE_1__*) ;

void msi_free_patchinfo( MSIPATCHINFO *patch )
{
    msi_free( patch->patchcode );
    msi_free( patch->products );
    msi_free( patch->transforms );
    msi_free( patch->filename );
    msi_free( patch->localfile );
    msi_free( patch );
}
