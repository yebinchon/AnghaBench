
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nCol; int pSelect; } ;
struct TYPE_6__ {int rc; TYPE_1__ objiter; } ;
typedef TYPE_2__ sqlite3rbu ;


 int RBU_DELETE ;
 int RBU_IDX_DELETE ;
 int RBU_IDX_INSERT ;
 int RBU_INSERT ;
 int RBU_REPLACE ;
 int RBU_UPDATE ;

 int SQLITE_NOMEM ;

 int rbuBadControlError (TYPE_2__*) ;
 int sqlite3_column_int (int ,int) ;
 unsigned char* sqlite3_column_text (int ,int) ;
 int sqlite3_column_type (int ,int) ;

__attribute__((used)) static int rbuStepType(sqlite3rbu *p, const char **pzMask){
  int iCol = p->objiter.nCol;
  int res = 0;

  switch( sqlite3_column_type(p->objiter.pSelect, iCol) ){
    case 129: {
      int iVal = sqlite3_column_int(p->objiter.pSelect, iCol);
      switch( iVal ){
        case 0: res = RBU_INSERT; break;
        case 1: res = RBU_DELETE; break;
        case 2: res = RBU_REPLACE; break;
        case 3: res = RBU_IDX_DELETE; break;
        case 4: res = RBU_IDX_INSERT; break;
      }
      break;
    }

    case 128: {
      const unsigned char *z = sqlite3_column_text(p->objiter.pSelect, iCol);
      if( z==0 ){
        p->rc = SQLITE_NOMEM;
      }else{
        *pzMask = (const char*)z;
      }
      res = RBU_UPDATE;

      break;
    }

    default:
      break;
  }

  if( res==0 ){
    rbuBadControlError(p);
  }
  return res;
}
