
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int InteriorReader ;


 int assert (int) ;
 int interiorReaderAtEnd (int *) ;
 int interiorReaderCurrentBlockid (int *) ;
 int interiorReaderDestroy (int *) ;
 int interiorReaderInit (char const*,int,int *) ;
 int interiorReaderStep (int *) ;
 scalar_t__ interiorReaderTermCmp (int *,char const*,int,int) ;

__attribute__((used)) static void getChildrenContaining(const char *pData, int nData,
                                  const char *pTerm, int nTerm, int isPrefix,
                                  sqlite_int64 *piStartChild,
                                  sqlite_int64 *piEndChild){
  InteriorReader reader;

  assert( nData>1 );
  assert( *pData!='\0' );
  interiorReaderInit(pData, nData, &reader);


  while( !interiorReaderAtEnd(&reader) ){
    if( interiorReaderTermCmp(&reader, pTerm, nTerm, 0)>0 ) break;
    interiorReaderStep(&reader);
  }
  *piStartChild = interiorReaderCurrentBlockid(&reader);





  while( !interiorReaderAtEnd(&reader) ){
    if( interiorReaderTermCmp(&reader, pTerm, nTerm, isPrefix)>0 ) break;
    interiorReaderStep(&reader);
  }
  *piEndChild = interiorReaderCurrentBlockid(&reader);

  interiorReaderDestroy(&reader);


  assert( *piEndChild>=*piStartChild );
  assert( isPrefix || *piStartChild==*piEndChild );
}
