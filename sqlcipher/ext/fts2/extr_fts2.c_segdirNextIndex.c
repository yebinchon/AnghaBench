
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fulltext_vtab ;


 int MERGE_COUNT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int segdir_max_index (int *,int,int*) ;
 int segmentMerge (int *,int) ;

__attribute__((used)) static int segdirNextIndex(fulltext_vtab *v, int iLevel, int *pidx){
  int rc = segdir_max_index(v, iLevel, pidx);
  if( rc==SQLITE_DONE ){
    *pidx = 0;
  }else if( rc==SQLITE_ROW ){
    if( *pidx==(MERGE_COUNT-1) ){
      rc = segmentMerge(v, iLevel);
      if( rc!=SQLITE_OK ) return rc;
      *pidx = 0;
    }else{
      (*pidx)++;
    }
  }else{
    return rc;
  }
  return SQLITE_OK;
}
