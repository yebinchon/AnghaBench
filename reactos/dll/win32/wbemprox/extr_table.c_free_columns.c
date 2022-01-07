
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct column {scalar_t__ name; } ;
typedef struct column WCHAR ;
typedef size_t UINT ;


 int heap_free (struct column*) ;

void free_columns( struct column *columns, UINT num_cols )
{
    UINT i;

    for (i = 0; i < num_cols; i++) { heap_free( (WCHAR *)columns[i].name ); }
    heap_free( columns );
}
