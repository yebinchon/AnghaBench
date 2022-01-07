
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zMsg ;
typedef void* sqlite3_int64 ;
struct TYPE_6__ {int szPg; int iCol; } ;
typedef TYPE_1__ GState ;


 int ofst2byte (TYPE_1__*,int) ;
 int ofstInFile (TYPE_1__*,int) ;
 int ofstSerialSize (int) ;
 void* ofstVarint (TYPE_1__*,int*) ;
 int printf (char*,char*) ;
 int sqlite3_snprintf (int,char*,char*,void*,...) ;

__attribute__((used)) static void ofstWalkLeafPage(GState *p){
  int nCell;
  int i;
  int ofst;
  int nPayload;
  sqlite3_int64 rowid;
  int nHdr;
  int j;
  int scode;
  int sz;
  int dataOfst;
  char zMsg[200];

  nCell = ofst2byte(p, 3);
  for(i=0; i<nCell; i++){
    ofst = ofst2byte(p, 8+i*2);
    nPayload = ofstVarint(p, &ofst);
    rowid = ofstVarint(p, &ofst);
    if( nPayload > p->szPg-35 ){
      sqlite3_snprintf(sizeof(zMsg), zMsg,
         "# overflow rowid %lld", rowid);
      printf("%s\n", zMsg);
      continue;
    }
    dataOfst = ofst;
    nHdr = ofstVarint(p, &ofst);
    dataOfst += nHdr;
    for(j=0; j<p->iCol; j++){
      scode = ofstVarint(p, &ofst);
      dataOfst += ofstSerialSize(scode);
    }
    scode = ofstVarint(p, &ofst);
    sz = ofstSerialSize(scode);
    sqlite3_snprintf(sizeof(zMsg), zMsg,
         "rowid %12lld size %5d offset %8d",
          rowid, sz, ofstInFile(p, dataOfst));
    printf("%s\n", zMsg);
  }
}
