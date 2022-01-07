
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int entry; TYPE_1__* feature; } ;
struct TYPE_6__ {int Children; } ;
typedef TYPE_1__ MSIFEATURE ;
typedef TYPE_2__ FeatureList ;


 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* msi_alloc (int) ;

__attribute__((used)) static UINT add_feature_child( MSIFEATURE *parent, MSIFEATURE *child )
{
    FeatureList *fl;

    fl = msi_alloc( sizeof(*fl) );
    if ( !fl )
        return ERROR_NOT_ENOUGH_MEMORY;
    fl->feature = child;
    list_add_tail( &parent->Children, &fl->entry );

    return ERROR_SUCCESS;
}
