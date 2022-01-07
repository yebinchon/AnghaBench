
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int DocListReader ;


 scalar_t__ atEnd (int *) ;
 int readDocid (int *) ;
 int skipPositionList (int *) ;

__attribute__((used)) static sqlite_int64 nextDocid(DocListReader *pIn){
  skipPositionList(pIn);
  return atEnd(pIn) ? 0 : readDocid(pIn);
}
