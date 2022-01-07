
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int hash_table; } ;
typedef TYPE_1__ MSICOLUMNINFO ;


 int msi_free (int ) ;

__attribute__((used)) static void msi_free_colinfo( MSICOLUMNINFO *colinfo, UINT count )
{
    UINT i;
    for (i = 0; i < count; i++) msi_free( colinfo[i].hash_table );
}
