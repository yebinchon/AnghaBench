
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pStruct; } ;
typedef TYPE_1__ Fts5Index ;


 int fts5StructureRelease (scalar_t__) ;

__attribute__((used)) static void fts5StructureInvalidate(Fts5Index *p){
  if( p->pStruct ){
    fts5StructureRelease(p->pStruct);
    p->pStruct = 0;
  }
}
