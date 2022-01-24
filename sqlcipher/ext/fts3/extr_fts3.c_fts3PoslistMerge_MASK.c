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
typedef  int sqlite3_int64 ;

/* Variables and functions */
 int FTS_CORRUPT_VTAB ; 
 int POSITION_LIST_END ; 
 char POS_COLUMN ; 
 char POS_END ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int FUNC3 (char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**,int*) ; 

__attribute__((used)) static int FUNC6(
  char **pp,                      /* Output buffer */
  char **pp1,                     /* Left input list */
  char **pp2                      /* Right input list */
){
  char *p = *pp;
  char *p1 = *pp1;
  char *p2 = *pp2;

  while( *p1 || *p2 ){
    int iCol1;         /* The current column index in pp1 */
    int iCol2;         /* The current column index in pp2 */

    if( *p1==POS_COLUMN ){ 
      FUNC2(&p1[1], &iCol1);
      if( iCol1==0 ) return FTS_CORRUPT_VTAB;
    }
    else if( *p1==POS_END ) iCol1 = POSITION_LIST_END;
    else iCol1 = 0;

    if( *p2==POS_COLUMN ){
      FUNC2(&p2[1], &iCol2);
      if( iCol2==0 ) return FTS_CORRUPT_VTAB;
    }
    else if( *p2==POS_END ) iCol2 = POSITION_LIST_END;
    else iCol2 = 0;

    if( iCol1==iCol2 ){
      sqlite3_int64 i1 = 0;       /* Last position from pp1 */
      sqlite3_int64 i2 = 0;       /* Last position from pp2 */
      sqlite3_int64 iPrev = 0;
      int n = FUNC3(&p, iCol1);
      p1 += n;
      p2 += n;

      /* At this point, both p1 and p2 point to the start of column-lists
      ** for the same column (the column with index iCol1 and iCol2).
      ** A column-list is a list of non-negative delta-encoded varints, each 
      ** incremented by 2 before being stored. Each list is terminated by a
      ** POS_END (0) or POS_COLUMN (1). The following block merges the two lists
      ** and writes the results to buffer p. p is left pointing to the byte
      ** after the list written. No terminator (POS_END or POS_COLUMN) is
      ** written to the output.
      */
      FUNC1(&p1, &i1);
      FUNC1(&p2, &i2);
      do {
        FUNC4(&p, &iPrev, (i1<i2) ? i1 : i2); 
        iPrev -= 2;
        if( i1==i2 ){
          FUNC5(&p1, &i1);
          FUNC5(&p2, &i2);
        }else if( i1<i2 ){
          FUNC5(&p1, &i1);
        }else{
          FUNC5(&p2, &i2);
        }
      }while( i1!=POSITION_LIST_END || i2!=POSITION_LIST_END );
    }else if( iCol1<iCol2 ){
      p1 += FUNC3(&p, iCol1);
      FUNC0(&p, &p1);
    }else{
      p2 += FUNC3(&p, iCol2);
      FUNC0(&p, &p2);
    }
  }

  *p++ = POS_END;
  *pp = p;
  *pp1 = p1 + 1;
  *pp2 = p2 + 1;
  return SQLITE_OK;
}