
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tablespace_name; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef TYPE_2__ Tablespace ;
typedef int Hypertable ;
typedef int Chunk ;


 char* NameStr (int ) ;
 TYPE_2__* ts_hypertable_select_tablespace (int *,int *) ;

char *
ts_hypertable_select_tablespace_name(Hypertable *ht, Chunk *chunk)
{
 Tablespace *tspc = ts_hypertable_select_tablespace(ht, chunk);

 if (((void*)0) == tspc)
  return ((void*)0);

 return NameStr(tspc->fd.tablespace_name);
}
