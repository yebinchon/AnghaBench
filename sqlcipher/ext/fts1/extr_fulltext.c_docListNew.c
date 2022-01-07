
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DocListType ;
typedef int DocList ;


 int docListInit (int *,int ,int ,int ) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static DocList *docListNew(DocListType iType){
  DocList *d = (DocList *) malloc(sizeof(DocList));
  docListInit(d, iType, 0, 0);
  return d;
}
