
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int FTS_CORRUPT_VTAB ;
 int POSITION_LIST_END ;
 char POS_COLUMN ;
 char POS_END ;
 int SQLITE_OK ;
 int fts3ColumnlistCopy (char**,char**) ;
 int fts3GetDeltaVarint (char**,int*) ;
 int fts3GetVarint32 (char*,int*) ;
 int fts3PutColNumber (char**,int) ;
 int fts3PutDeltaVarint (char**,int*,int) ;
 int fts3ReadNextPos (char**,int*) ;

__attribute__((used)) static int fts3PoslistMerge(
  char **pp,
  char **pp1,
  char **pp2
){
  char *p = *pp;
  char *p1 = *pp1;
  char *p2 = *pp2;

  while( *p1 || *p2 ){
    int iCol1;
    int iCol2;

    if( *p1==POS_COLUMN ){
      fts3GetVarint32(&p1[1], &iCol1);
      if( iCol1==0 ) return FTS_CORRUPT_VTAB;
    }
    else if( *p1==POS_END ) iCol1 = POSITION_LIST_END;
    else iCol1 = 0;

    if( *p2==POS_COLUMN ){
      fts3GetVarint32(&p2[1], &iCol2);
      if( iCol2==0 ) return FTS_CORRUPT_VTAB;
    }
    else if( *p2==POS_END ) iCol2 = POSITION_LIST_END;
    else iCol2 = 0;

    if( iCol1==iCol2 ){
      sqlite3_int64 i1 = 0;
      sqlite3_int64 i2 = 0;
      sqlite3_int64 iPrev = 0;
      int n = fts3PutColNumber(&p, iCol1);
      p1 += n;
      p2 += n;
      fts3GetDeltaVarint(&p1, &i1);
      fts3GetDeltaVarint(&p2, &i2);
      do {
        fts3PutDeltaVarint(&p, &iPrev, (i1<i2) ? i1 : i2);
        iPrev -= 2;
        if( i1==i2 ){
          fts3ReadNextPos(&p1, &i1);
          fts3ReadNextPos(&p2, &i2);
        }else if( i1<i2 ){
          fts3ReadNextPos(&p1, &i1);
        }else{
          fts3ReadNextPos(&p2, &i2);
        }
      }while( i1!=POSITION_LIST_END || i2!=POSITION_LIST_END );
    }else if( iCol1<iCol2 ){
      p1 += fts3PutColNumber(&p, iCol1);
      fts3ColumnlistCopy(&p, &p1);
    }else{
      p2 += fts3PutColNumber(&p, iCol2);
      fts3ColumnlistCopy(&p, &p2);
    }
  }

  *p++ = POS_END;
  *pp = p;
  *pp1 = p1 + 1;
  *pp2 = p2 + 1;
  return SQLITE_OK;
}
