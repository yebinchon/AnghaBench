
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DocListReader ;


 int readPosition (int *) ;

__attribute__((used)) static void skipPositionList(DocListReader *pReader){
  while( readPosition(pReader)!=-1 )
    ;
}
