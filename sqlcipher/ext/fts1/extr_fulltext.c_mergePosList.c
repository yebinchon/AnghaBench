
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_7__ {scalar_t__ iType; } ;
struct TYPE_6__ {int iOffset; TYPE_3__* pOut; int in; } ;
typedef int DocListReader ;
typedef TYPE_1__ DocListMerge ;


 scalar_t__ DL_POSITIONS ;
 int docListAddDocid (TYPE_3__*,int ) ;
 int docListAddEndPos (TYPE_3__*) ;
 int docListAddPos (TYPE_3__*,int) ;
 int readPosition (int *) ;

__attribute__((used)) static void mergePosList(DocListMerge *m, sqlite_int64 iDocid,
                  DocListReader *pBlockReader){
  int block_pos = readPosition(pBlockReader);
  int in_pos = readPosition(&m->in);
  int match = 0;
  while( block_pos!=-1 || in_pos!=-1 ){
    if( block_pos-m->iOffset==in_pos ){
      if( !match ){
        docListAddDocid(m->pOut, iDocid);
        match = 1;
      }
      if( m->pOut->iType >= DL_POSITIONS ){
        docListAddPos(m->pOut, in_pos);
      }
      block_pos = readPosition(pBlockReader);
      in_pos = readPosition(&m->in);
    } else if( in_pos==-1 || (block_pos!=-1 && block_pos-m->iOffset<in_pos) ){
      block_pos = readPosition(pBlockReader);
    } else {
      in_pos = readPosition(&m->in);
    }
  }
  if( m->pOut->iType >= DL_POSITIONS && match ){
    docListAddEndPos(m->pOut);
  }
}
