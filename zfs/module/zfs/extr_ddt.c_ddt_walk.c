
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ** spa_ddt; } ;
typedef TYPE_1__ spa_t ;
typedef int ddt_t ;
struct TYPE_9__ {scalar_t__ dde_type; scalar_t__ dde_class; } ;
typedef TYPE_2__ ddt_entry_t ;
struct TYPE_10__ {scalar_t__ ddb_class; scalar_t__ ddb_type; scalar_t__ ddb_checksum; int ddb_cursor; } ;
typedef TYPE_3__ ddt_bookmark_t ;


 scalar_t__ DDT_CLASSES ;
 scalar_t__ DDT_TYPES ;
 int ENOENT ;
 int SET_ERROR (int) ;
 scalar_t__ ZIO_CHECKSUM_FUNCTIONS ;
 scalar_t__ ddt_object_exists (int *,scalar_t__,scalar_t__) ;
 int ddt_object_walk (int *,scalar_t__,scalar_t__,int *,TYPE_2__*) ;

int
ddt_walk(spa_t *spa, ddt_bookmark_t *ddb, ddt_entry_t *dde)
{
 do {
  do {
   do {
    ddt_t *ddt = spa->spa_ddt[ddb->ddb_checksum];
    int error = ENOENT;
    if (ddt_object_exists(ddt, ddb->ddb_type,
        ddb->ddb_class)) {
     error = ddt_object_walk(ddt,
         ddb->ddb_type, ddb->ddb_class,
         &ddb->ddb_cursor, dde);
    }
    dde->dde_type = ddb->ddb_type;
    dde->dde_class = ddb->ddb_class;
    if (error == 0)
     return (0);
    if (error != ENOENT)
     return (error);
    ddb->ddb_cursor = 0;
   } while (++ddb->ddb_checksum < ZIO_CHECKSUM_FUNCTIONS);
   ddb->ddb_checksum = 0;
  } while (++ddb->ddb_type < DDT_TYPES);
  ddb->ddb_type = 0;
 } while (++ddb->ddb_class < DDT_CLASSES);

 return (SET_ERROR(ENOENT));
}
