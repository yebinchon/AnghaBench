
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int * storage; int update_count; } ;
typedef TYPE_1__ MSISUMMARYINFO ;
typedef int IStorage ;


 int IStorage_AddRef (int *) ;
 int MSIHANDLETYPE_SUMMARYINFO ;
 int MSI_CloseSummaryInfo ;
 TYPE_1__* alloc_msiobject (int ,int,int ) ;

__attribute__((used)) static MSISUMMARYINFO *create_suminfo( IStorage *stg, UINT update_count )
{
    MSISUMMARYINFO *si;

    if (!(si = alloc_msiobject( MSIHANDLETYPE_SUMMARYINFO, sizeof(MSISUMMARYINFO), MSI_CloseSummaryInfo )))
        return ((void*)0);

    si->update_count = update_count;
    IStorage_AddRef( stg );
    si->storage = stg;

    return si;
}
