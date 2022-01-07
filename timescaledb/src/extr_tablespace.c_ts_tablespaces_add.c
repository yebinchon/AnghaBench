
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int num_tablespaces; int capacity; TYPE_2__* tablespaces; } ;
typedef TYPE_1__ Tablespaces ;
struct TYPE_8__ {int tablespace_oid; int fd; } ;
typedef TYPE_2__ Tablespace ;
typedef int Oid ;
typedef int FormData_tablespace ;


 scalar_t__ TABLESPACE_DEFAULT_CAPACITY ;
 int memcpy (int *,int *,int) ;
 TYPE_2__* repalloc (TYPE_2__*,int) ;

Tablespace *
ts_tablespaces_add(Tablespaces *tspcs, FormData_tablespace *form, Oid tspc_oid)
{
 Tablespace *tspc;

 if (tspcs->num_tablespaces >= tspcs->capacity)
 {
  tspcs->capacity += TABLESPACE_DEFAULT_CAPACITY;
  tspcs->tablespaces = repalloc(tspcs->tablespaces, sizeof(Tablespace) * tspcs->capacity);
 }

 tspc = &tspcs->tablespaces[tspcs->num_tablespaces++];
 memcpy(&tspc->fd, form, sizeof(FormData_tablespace));
 tspc->tablespace_oid = tspc_oid;

 return tspc;
}
