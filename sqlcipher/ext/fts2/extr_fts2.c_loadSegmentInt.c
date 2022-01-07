
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite_int64 ;
typedef int fulltext_vtab ;
typedef int DataBuffer ;


 int SQLITE_OK ;
 int assert (int) ;
 int getChildrenContaining (char const*,int,char const*,int,int,scalar_t__*,scalar_t__*) ;
 int loadAndGetChildrenContaining (int *,scalar_t__,char const*,int,int,scalar_t__*,scalar_t__*) ;
 int loadSegmentLeaf (int *,char const*,int,char const*,int,int,int *) ;
 int loadSegmentLeaves (int *,scalar_t__,scalar_t__,char const*,int,int,int *) ;

__attribute__((used)) static int loadSegmentInt(fulltext_vtab *v, const char *pData, int nData,
                          sqlite_int64 iLeavesEnd,
                          const char *pTerm, int nTerm, int isPrefix,
                          DataBuffer *out){

  if( *pData=='\0' ){
    return loadSegmentLeaf(v, pData, nData, pTerm, nTerm, isPrefix, out);
  }else{
    int rc;
    sqlite_int64 iStartChild, iEndChild;




    getChildrenContaining(pData, nData, pTerm, nTerm, isPrefix,
                          &iStartChild, &iEndChild);
    while( iStartChild>iLeavesEnd ){
      sqlite_int64 iNextStart, iNextEnd;
      rc = loadAndGetChildrenContaining(v, iStartChild, pTerm, nTerm, isPrefix,
                                        &iNextStart, &iNextEnd);
      if( rc!=SQLITE_OK ) return rc;


      if( iStartChild!=iEndChild ){
        sqlite_int64 iDummy;
        rc = loadAndGetChildrenContaining(v, iEndChild, pTerm, nTerm, isPrefix,
                                          &iDummy, &iNextEnd);
        if( rc!=SQLITE_OK ) return rc;
      }

      assert( iNextStart<=iNextEnd );
      iStartChild = iNextStart;
      iEndChild = iNextEnd;
    }
    assert( iStartChild<=iLeavesEnd );
    assert( iEndChild<=iLeavesEnd );


    return loadSegmentLeaves(v, iStartChild, iEndChild,
                             pTerm, nTerm, isPrefix, out);
  }
}
