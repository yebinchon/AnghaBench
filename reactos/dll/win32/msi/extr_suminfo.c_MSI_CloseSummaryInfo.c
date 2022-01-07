
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int storage; int * property; } ;
typedef TYPE_1__ MSISUMMARYINFO ;
typedef int MSIOBJECTHDR ;
typedef size_t DWORD ;


 int IStorage_Release (int ) ;
 size_t MSI_MAX_PROPS ;
 int free_prop (int *) ;

__attribute__((used)) static void MSI_CloseSummaryInfo( MSIOBJECTHDR *arg )
{
    MSISUMMARYINFO *si = (MSISUMMARYINFO *) arg;
    DWORD i;

    for( i = 0; i < MSI_MAX_PROPS; i++ )
        free_prop( &si->property[i] );
    IStorage_Release( si->storage );
}
