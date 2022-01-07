
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ magic; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_6__ {int errMask; } ;


 int SQLITE_OK ;
 scalar_t__ VDBE_MAGIC_HALT ;
 scalar_t__ VDBE_MAGIC_RUN ;
 int assert (int) ;
 int sqlite3VdbeDelete (TYPE_2__*) ;
 int sqlite3VdbeReset (TYPE_2__*) ;

int sqlite3VdbeFinalize(Vdbe *p){
  int rc = SQLITE_OK;
  if( p->magic==VDBE_MAGIC_RUN || p->magic==VDBE_MAGIC_HALT ){
    rc = sqlite3VdbeReset(p);
    assert( (rc & p->db->errMask)==rc );
  }
  sqlite3VdbeDelete(p);
  return rc;
}
