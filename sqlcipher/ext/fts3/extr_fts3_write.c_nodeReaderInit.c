
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* aNode; int nNode; int iOff; int iChild; } ;
typedef TYPE_1__ NodeReader ;


 int memset (TYPE_1__*,int ,int) ;
 int nodeReaderNext (TYPE_1__*) ;
 int sqlite3Fts3GetVarint (char const*,int *) ;

__attribute__((used)) static int nodeReaderInit(NodeReader *p, const char *aNode, int nNode){
  memset(p, 0, sizeof(NodeReader));
  p->aNode = aNode;
  p->nNode = nNode;


  if( p->aNode[0] ){

    p->iOff = 1 + sqlite3Fts3GetVarint(&p->aNode[1], &p->iChild);
  }else{
    p->iOff = 1;
  }

  return nodeReaderNext(p);
}
