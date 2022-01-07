
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef scalar_t__ i64 ;
struct TYPE_2__ {scalar_t__ pagesize; int mxPage; } ;


 int decodeInt32 (unsigned char*) ;
 int decodeVarint (unsigned char*,scalar_t__*) ;
 unsigned char* fileRead (int,int) ;
 TYPE_1__ g ;
 scalar_t__ localPayload (scalar_t__,unsigned char) ;
 int page_usage_msg (int,char*,int,int,int) ;
 int sqlite3_free (unsigned char*) ;

__attribute__((used)) static void page_usage_cell(
  unsigned char cType,
  unsigned char *a,
  int pgno,
  int cellno
){
  int i;
  int n = 0;
  i64 nPayload;
  i64 rowid;
  i64 nLocal;
  i = 0;
  if( cType<=5 ){
    a += 4;
    n += 4;
  }
  if( cType!=5 ){
    i = decodeVarint(a, &nPayload);
    a += i;
    n += i;
    nLocal = localPayload(nPayload, cType);
  }else{
    nPayload = nLocal = 0;
  }
  if( cType==5 || cType==13 ){
    i = decodeVarint(a, &rowid);
    a += i;
    n += i;
  }
  if( nLocal<nPayload ){
    int ovfl = decodeInt32(a+nLocal);
    int cnt = 0;
    while( ovfl && (cnt++)<g.mxPage ){
      page_usage_msg(ovfl, "overflow %d from cell %d of page %d",
                     cnt, cellno, pgno);
      a = fileRead((ovfl-1)*(sqlite3_int64)g.pagesize, 4);
      ovfl = decodeInt32(a);
      sqlite3_free(a);
    }
  }
}
