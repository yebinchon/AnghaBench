
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLWriter ;
typedef int PLReader ;


 int plrColumn (int *) ;
 int plrEndOffset (int *) ;
 int plrPosition (int *) ;
 int plrStartOffset (int *) ;
 int plwAdd (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void plwCopy(PLWriter *pWriter, PLReader *pReader){
  plwAdd(pWriter, plrColumn(pReader), plrPosition(pReader),
         plrStartOffset(pReader), plrEndOffset(pReader));
}
