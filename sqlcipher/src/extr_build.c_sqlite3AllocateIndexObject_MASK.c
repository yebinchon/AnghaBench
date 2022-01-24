#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int i16 ;
struct TYPE_4__ {char const** azColl; int* aiColumn; int nColumn; int nKeyCol; int /*<<< orphan*/ * aSortOrder; int /*<<< orphan*/ * aiRowLogEst; } ;
typedef  int /*<<< orphan*/  LogEst ;
typedef  TYPE_1__ Index ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

Index *FUNC2(
  sqlite3 *db,         /* Database connection */
  i16 nCol,            /* Total number of columns in the index */
  int nExtra,          /* Number of bytes of extra space to alloc */
  char **ppExtra       /* Pointer to the "extra" space */
){
  Index *p;            /* Allocated index object */
  int nByte;           /* Bytes of space for Index object + arrays */

  nByte = FUNC0(sizeof(Index)) +              /* Index structure  */
          FUNC0(sizeof(char*)*nCol) +         /* Index.azColl     */
          FUNC0(sizeof(LogEst)*(nCol+1) +     /* Index.aiRowLogEst   */
                 sizeof(i16)*nCol +            /* Index.aiColumn   */
                 sizeof(u8)*nCol);             /* Index.aSortOrder */
  p = FUNC1(db, nByte + nExtra);
  if( p ){
    char *pExtra = ((char*)p)+FUNC0(sizeof(Index));
    p->azColl = (const char**)pExtra; pExtra += FUNC0(sizeof(char*)*nCol);
    p->aiRowLogEst = (LogEst*)pExtra; pExtra += sizeof(LogEst)*(nCol+1);
    p->aiColumn = (i16*)pExtra;       pExtra += sizeof(i16)*nCol;
    p->aSortOrder = (u8*)pExtra;
    p->nColumn = nCol;
    p->nKeyCol = nCol - 1;
    *ppExtra = ((char*)p) + nByte;
  }
  return p;
}