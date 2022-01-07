
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DocListReader ;


 int readDocid (int *) ;
 int skipPositionList (int *) ;

__attribute__((used)) static void skipDocument(DocListReader *pReader){
  readDocid(pReader);
  skipPositionList(pReader);
}
