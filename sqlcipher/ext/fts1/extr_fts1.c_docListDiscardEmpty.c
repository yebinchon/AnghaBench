
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_8__ {scalar_t__ iType; } ;
typedef int DocListReader ;
typedef TYPE_1__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int assert (int) ;
 int atEnd (int *) ;
 int docListAddDocid (TYPE_1__*,int ) ;
 int docListAddPos (TYPE_1__*,int,int) ;
 int docListDestroy (TYPE_1__*) ;
 int docListInit (TYPE_1__*,scalar_t__,int *,int ) ;
 int readDocid (int *) ;
 int readPosition (int *,int*) ;
 int readerInit (int *,TYPE_1__*) ;

__attribute__((used)) static void docListDiscardEmpty(DocList *in) {
  DocListReader r;
  DocList out;



  assert( in->iType>=DL_POSITIONS );
  readerInit(&r, in);
  docListInit(&out, DL_POSITIONS, ((void*)0), 0);

  while( !atEnd(&r) ){
    sqlite_int64 iDocid = readDocid(&r);
    int match = 0;
    int iPos, iColumn;
    while( (iPos = readPosition(&r, &iColumn)) != -1 ){
      if( !match ){
        docListAddDocid(&out, iDocid);
        match = 1;
      }
      docListAddPos(&out, iColumn, iPos);
    }
  }

  docListDestroy(in);
  *in = out;
}
