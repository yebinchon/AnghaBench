
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int schema_name; } ;
struct TYPE_4__ {TYPE_3__ fd; } ;
typedef TYPE_1__ Chunk ;


 int chunk_update_form (TYPE_3__*) ;
 int namestrcpy (int *,char const*) ;

bool
ts_chunk_set_schema(Chunk *chunk, const char *newschema)
{
 namestrcpy(&chunk->fd.schema_name, newschema);

 return chunk_update_form(&chunk->fd);
}
