#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int* aKWCode ; 
 scalar_t__* aKWHash ; 
 int* aKWLen ; 
 scalar_t__* aKWNext ; 
 size_t* aKWOffset ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char const FUNC2 (char const) ; 
 char* zKWText ; 

__attribute__((used)) static int FUNC3(const char *z, int n, int *pType){
  int i, j;
  const char *zKW;
  if( n>=2 ){
    i = ((FUNC0(z[0])*4) ^ (FUNC0(z[n-1])*3) ^ n) % 127;
    for(i=((int)aKWHash[i])-1; i>=0; i=((int)aKWNext[i])-1){
      if( aKWLen[i]!=n ) continue;
      j = 0;
      zKW = &zKWText[aKWOffset[i]];
#ifdef SQLITE_ASCII
      while( j<n && (z[j]&~0x20)==zKW[j] ){ j++; }
#endif
#ifdef SQLITE_EBCDIC
      while( j<n && toupper(z[j])==zKW[j] ){ j++; }
#endif
      if( j<n ) continue;
      FUNC1( i==0 ); /* REINDEX */
      FUNC1( i==1 ); /* INDEXED */
      FUNC1( i==2 ); /* INDEX */
      FUNC1( i==3 ); /* DESC */
      FUNC1( i==4 ); /* ESCAPE */
      FUNC1( i==5 ); /* EACH */
      FUNC1( i==6 ); /* CHECK */
      FUNC1( i==7 ); /* KEY */
      FUNC1( i==8 ); /* BEFORE */
      FUNC1( i==9 ); /* FOREIGN */
      FUNC1( i==10 ); /* FOR */
      FUNC1( i==11 ); /* IGNORE */
      FUNC1( i==12 ); /* REGEXP */
      FUNC1( i==13 ); /* EXPLAIN */
      FUNC1( i==14 ); /* INSTEAD */
      FUNC1( i==15 ); /* ADD */
      FUNC1( i==16 ); /* DATABASE */
      FUNC1( i==17 ); /* AS */
      FUNC1( i==18 ); /* SELECT */
      FUNC1( i==19 ); /* TABLE */
      FUNC1( i==20 ); /* LEFT */
      FUNC1( i==21 ); /* THEN */
      FUNC1( i==22 ); /* END */
      FUNC1( i==23 ); /* DEFERRABLE */
      FUNC1( i==24 ); /* ELSE */
      FUNC1( i==25 ); /* EXCEPT */
      FUNC1( i==26 ); /* TRANSACTION */
      FUNC1( i==27 ); /* ACTION */
      FUNC1( i==28 ); /* ON */
      FUNC1( i==29 ); /* NATURAL */
      FUNC1( i==30 ); /* ALTER */
      FUNC1( i==31 ); /* RAISE */
      FUNC1( i==32 ); /* EXCLUSIVE */
      FUNC1( i==33 ); /* EXISTS */
      FUNC1( i==34 ); /* SAVEPOINT */
      FUNC1( i==35 ); /* INTERSECT */
      FUNC1( i==36 ); /* TRIGGER */
      FUNC1( i==37 ); /* REFERENCES */
      FUNC1( i==38 ); /* CONSTRAINT */
      FUNC1( i==39 ); /* INTO */
      FUNC1( i==40 ); /* OFFSET */
      FUNC1( i==41 ); /* OF */
      FUNC1( i==42 ); /* SET */
      FUNC1( i==43 ); /* TEMPORARY */
      FUNC1( i==44 ); /* TEMP */
      FUNC1( i==45 ); /* OR */
      FUNC1( i==46 ); /* UNIQUE */
      FUNC1( i==47 ); /* QUERY */
      FUNC1( i==48 ); /* WITHOUT */
      FUNC1( i==49 ); /* WITH */
      FUNC1( i==50 ); /* OUTER */
      FUNC1( i==51 ); /* RELEASE */
      FUNC1( i==52 ); /* ATTACH */
      FUNC1( i==53 ); /* HAVING */
      FUNC1( i==54 ); /* GROUP */
      FUNC1( i==55 ); /* UPDATE */
      FUNC1( i==56 ); /* BEGIN */
      FUNC1( i==57 ); /* INNER */
      FUNC1( i==58 ); /* RANGE */
      FUNC1( i==59 ); /* BETWEEN */
      FUNC1( i==60 ); /* NOTHING */
      FUNC1( i==61 ); /* GLOB */
      FUNC1( i==62 ); /* BY */
      FUNC1( i==63 ); /* CASCADE */
      FUNC1( i==64 ); /* ASC */
      FUNC1( i==65 ); /* DELETE */
      FUNC1( i==66 ); /* CASE */
      FUNC1( i==67 ); /* COLLATE */
      FUNC1( i==68 ); /* CREATE */
      FUNC1( i==69 ); /* CURRENT_DATE */
      FUNC1( i==70 ); /* DETACH */
      FUNC1( i==71 ); /* IMMEDIATE */
      FUNC1( i==72 ); /* JOIN */
      FUNC1( i==73 ); /* INSERT */
      FUNC1( i==74 ); /* LIKE */
      FUNC1( i==75 ); /* MATCH */
      FUNC1( i==76 ); /* PLAN */
      FUNC1( i==77 ); /* ANALYZE */
      FUNC1( i==78 ); /* PRAGMA */
      FUNC1( i==79 ); /* ABORT */
      FUNC1( i==80 ); /* VALUES */
      FUNC1( i==81 ); /* VIRTUAL */
      FUNC1( i==82 ); /* LIMIT */
      FUNC1( i==83 ); /* WHEN */
      FUNC1( i==84 ); /* NOTNULL */
      FUNC1( i==85 ); /* NOT */
      FUNC1( i==86 ); /* NO */
      FUNC1( i==87 ); /* NULL */
      FUNC1( i==88 ); /* WHERE */
      FUNC1( i==89 ); /* RECURSIVE */
      FUNC1( i==90 ); /* AFTER */
      FUNC1( i==91 ); /* RENAME */
      FUNC1( i==92 ); /* AND */
      FUNC1( i==93 ); /* DEFAULT */
      FUNC1( i==94 ); /* AUTOINCREMENT */
      FUNC1( i==95 ); /* TO */
      FUNC1( i==96 ); /* IN */
      FUNC1( i==97 ); /* CAST */
      FUNC1( i==98 ); /* COLUMN */
      FUNC1( i==99 ); /* COMMIT */
      FUNC1( i==100 ); /* CONFLICT */
      FUNC1( i==101 ); /* CROSS */
      FUNC1( i==102 ); /* CURRENT_TIMESTAMP */
      FUNC1( i==103 ); /* CURRENT_TIME */
      FUNC1( i==104 ); /* CURRENT */
      FUNC1( i==105 ); /* PARTITION */
      FUNC1( i==106 ); /* DEFERRED */
      FUNC1( i==107 ); /* DISTINCT */
      FUNC1( i==108 ); /* IS */
      FUNC1( i==109 ); /* DROP */
      FUNC1( i==110 ); /* PRECEDING */
      FUNC1( i==111 ); /* FAIL */
      FUNC1( i==112 ); /* FILTER */
      FUNC1( i==113 ); /* REPLACE */
      FUNC1( i==114 ); /* FOLLOWING */
      FUNC1( i==115 ); /* FROM */
      FUNC1( i==116 ); /* FULL */
      FUNC1( i==117 ); /* IF */
      FUNC1( i==118 ); /* ISNULL */
      FUNC1( i==119 ); /* ORDER */
      FUNC1( i==120 ); /* RESTRICT */
      FUNC1( i==121 ); /* OVER */
      FUNC1( i==122 ); /* RIGHT */
      FUNC1( i==123 ); /* ROLLBACK */
      FUNC1( i==124 ); /* ROWS */
      FUNC1( i==125 ); /* ROW */
      FUNC1( i==126 ); /* UNBOUNDED */
      FUNC1( i==127 ); /* UNION */
      FUNC1( i==128 ); /* USING */
      FUNC1( i==129 ); /* VACUUM */
      FUNC1( i==130 ); /* VIEW */
      FUNC1( i==131 ); /* WINDOW */
      FUNC1( i==132 ); /* DO */
      FUNC1( i==133 ); /* INITIALLY */
      FUNC1( i==134 ); /* ALL */
      FUNC1( i==135 ); /* PRIMARY */
      *pType = aKWCode[i];
      break;
    }
  }
  return n;
}