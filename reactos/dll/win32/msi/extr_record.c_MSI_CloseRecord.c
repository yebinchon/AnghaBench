
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {size_t count; int * fields; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIOBJECTHDR ;


 int MSI_FreeField (int *) ;

void MSI_CloseRecord( MSIOBJECTHDR *arg )
{
    MSIRECORD *rec = (MSIRECORD *) arg;
    UINT i;

    for( i=0; i<=rec->count; i++ )
        MSI_FreeField( &rec->fields[i] );
}
