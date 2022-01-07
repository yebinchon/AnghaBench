
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_17__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_24__ {scalar_t__ iType; } ;
struct TYPE_22__ {TYPE_1__* pDoclist; } ;
struct TYPE_23__ {TYPE_17__* pOut; TYPE_2__ in; } ;
struct TYPE_21__ {scalar_t__ iType; } ;
struct TYPE_20__ {scalar_t__ iType; } ;
typedef TYPE_2__ DocListReader ;
typedef TYPE_3__ DocListMerge ;
typedef TYPE_4__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int assert (int) ;
 int docListAddDocid (TYPE_17__*,scalar_t__) ;
 int docListAddEndPos (TYPE_17__*) ;
 int docListAddPos (TYPE_17__*,int) ;
 int mergePosList (TYPE_3__*,scalar_t__,TYPE_2__*) ;
 scalar_t__ peekDocid (TYPE_2__*) ;
 scalar_t__ readDocid (TYPE_2__*) ;
 int readPosition (TYPE_2__*) ;
 scalar_t__ readerAtEnd (TYPE_2__*) ;
 int readerInit (TYPE_2__*,TYPE_4__*) ;
 int skipDocument (TYPE_2__*) ;
 int skipPositionList (TYPE_2__*) ;

__attribute__((used)) static void mergeBlock(DocListMerge *m, DocList *pBlock){
  DocListReader blockReader;
  assert( pBlock->iType >= DL_POSITIONS );
  readerInit(&blockReader, pBlock);
  while( !readerAtEnd(&blockReader) ){
    sqlite_int64 iDocid = readDocid(&blockReader);
    if( m->in.pDoclist!=((void*)0) ){
      while( 1 ){
        if( readerAtEnd(&m->in) ) return;
        if( peekDocid(&m->in)>=iDocid ) break;
        skipDocument(&m->in);
      }
      if( peekDocid(&m->in)>iDocid ){
        skipPositionList(&blockReader);
        continue;
      }
      readDocid(&m->in);
    }

    if( m->in.pDoclist==((void*)0) || m->in.pDoclist->iType < DL_POSITIONS ){

      docListAddDocid(m->pOut, iDocid);
      if( m->pOut->iType >= DL_POSITIONS ){

        while( 1 ){
          int pos = readPosition(&blockReader);
          if( pos==-1 ) break;
          docListAddPos(m->pOut, pos);
        }
        docListAddEndPos(m->pOut);
      } else skipPositionList(&blockReader);
      continue;
    }
    mergePosList(m, iDocid, &blockReader);
  }
}
