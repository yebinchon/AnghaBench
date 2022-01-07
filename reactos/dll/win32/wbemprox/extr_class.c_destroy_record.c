
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aval; struct record* sval; } ;
struct record {size_t count; int type; struct record* fields; TYPE_1__ u; int table; } ;
typedef size_t UINT ;


 int CIM_DATETIME ;
 int CIM_FLAG_ARRAY ;
 int CIM_STRING ;
 int CIM_TYPE_MASK ;
 int destroy_array (int ,int) ;
 int heap_free (struct record*) ;
 int release_table (int ) ;

__attribute__((used)) static void destroy_record( struct record *record )
{
    UINT i;

    if (!record) return;
    release_table( record->table );
    for (i = 0; i < record->count; i++)
    {
        if (record->fields[i].type == CIM_STRING || record->fields[i].type == CIM_DATETIME)
            heap_free( record->fields[i].u.sval );
        else if (record->fields[i].type & CIM_FLAG_ARRAY)
            destroy_array( record->fields[i].u.aval, record->fields[i].type & CIM_TYPE_MASK );
    }
    heap_free( record->fields );
    heap_free( record );
}
