
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int out ;
typedef scalar_t__ i64 ;
struct TYPE_14__ {scalar_t__ n; } ;
struct TYPE_13__ {scalar_t__ rc; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Buffer ;


 int assert (int) ;
 int fts5BufferFree (TYPE_2__*) ;
 int fts5BufferSafeAppendVarint (TYPE_2__*,scalar_t__) ;
 int fts5BufferSwap (TYPE_2__*,TYPE_2__*) ;
 int fts5NextRowid (TYPE_2__*,int*,scalar_t__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3Fts5BufferSize (scalar_t__*,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void fts5MergeRowidLists(
  Fts5Index *p,
  Fts5Buffer *p1,
  Fts5Buffer *p2
){
  int i1 = 0;
  int i2 = 0;
  i64 iRowid1 = 0;
  i64 iRowid2 = 0;
  i64 iOut = 0;

  Fts5Buffer out;
  memset(&out, 0, sizeof(out));
  sqlite3Fts5BufferSize(&p->rc, &out, p1->n + p2->n);
  if( p->rc ) return;

  fts5NextRowid(p1, &i1, &iRowid1);
  fts5NextRowid(p2, &i2, &iRowid2);
  while( i1>=0 || i2>=0 ){
    if( i1>=0 && (i2<0 || iRowid1<iRowid2) ){
      assert( iOut==0 || iRowid1>iOut );
      fts5BufferSafeAppendVarint(&out, iRowid1 - iOut);
      iOut = iRowid1;
      fts5NextRowid(p1, &i1, &iRowid1);
    }else{
      assert( iOut==0 || iRowid2>iOut );
      fts5BufferSafeAppendVarint(&out, iRowid2 - iOut);
      iOut = iRowid2;
      if( i1>=0 && iRowid1==iRowid2 ){
        fts5NextRowid(p1, &i1, &iRowid1);
      }
      fts5NextRowid(p2, &i2, &iRowid2);
    }
  }

  fts5BufferSwap(&out, p1);
  fts5BufferFree(&out);
}
