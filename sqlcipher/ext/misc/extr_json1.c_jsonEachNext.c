
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_7__ {size_t* aUp; TYPE_3__* aNode; } ;
struct TYPE_9__ {size_t i; size_t iEnd; scalar_t__ eType; int iRowid; TYPE_2__ sParse; scalar_t__ bRecursive; } ;
struct TYPE_6__ {scalar_t__ iKey; } ;
struct TYPE_8__ {int jnFlags; scalar_t__ eType; TYPE_1__ u; } ;
typedef TYPE_3__ JsonNode ;
typedef TYPE_4__ JsonEachCursor ;


 int JNODE_LABEL ;


 int SQLITE_OK ;
 int jsonNodeSize (TYPE_3__*) ;

__attribute__((used)) static int jsonEachNext(sqlite3_vtab_cursor *cur){
  JsonEachCursor *p = (JsonEachCursor*)cur;
  if( p->bRecursive ){
    if( p->sParse.aNode[p->i].jnFlags & JNODE_LABEL ) p->i++;
    p->i++;
    p->iRowid++;
    if( p->i<p->iEnd ){
      u32 iUp = p->sParse.aUp[p->i];
      JsonNode *pUp = &p->sParse.aNode[iUp];
      p->eType = pUp->eType;
      if( pUp->eType==129 ){
        if( iUp==p->i-1 ){
          pUp->u.iKey = 0;
        }else{
          pUp->u.iKey++;
        }
      }
    }
  }else{
    switch( p->eType ){
      case 129: {
        p->i += jsonNodeSize(&p->sParse.aNode[p->i]);
        p->iRowid++;
        break;
      }
      case 128: {
        p->i += 1 + jsonNodeSize(&p->sParse.aNode[p->i+1]);
        p->iRowid++;
        break;
      }
      default: {
        p->i = p->iEnd;
        break;
      }
    }
  }
  return SQLITE_OK;
}
