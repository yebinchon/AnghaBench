
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 scalar_t__ RTREE_COORD_INT32 ;
 scalar_t__ RTREE_COORD_REAL32 ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int rtreeModule ;
 int rtreecheck ;
 int rtreedepth ;
 int rtreenode ;
 int sqlite3_create_function (int *,char*,int,int const,int ,int ,int ,int ) ;
 int sqlite3_create_module_v2 (int *,char*,int *,void*,int ) ;
 int sqlite3_geopoly_init (int *) ;

int sqlite3RtreeInit(sqlite3 *db){
  const int utf8 = SQLITE_UTF8;
  int rc;

  rc = sqlite3_create_function(db, "rtreenode", 2, utf8, 0, rtreenode, 0, 0);
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function(db, "rtreedepth", 1, utf8, 0,rtreedepth, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function(db, "rtreecheck", -1, utf8, 0,rtreecheck, 0,0);
  }
  if( rc==SQLITE_OK ){



    void *c = (void *)RTREE_COORD_REAL32;

    rc = sqlite3_create_module_v2(db, "rtree", &rtreeModule, c, 0);
  }
  if( rc==SQLITE_OK ){
    void *c = (void *)RTREE_COORD_INT32;
    rc = sqlite3_create_module_v2(db, "rtree_i32", &rtreeModule, c, 0);
  }






  return rc;
}
