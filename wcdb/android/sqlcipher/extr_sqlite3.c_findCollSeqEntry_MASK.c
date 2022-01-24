#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  aCollSeq; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_14__ {char* zName; int /*<<< orphan*/  enc; } ;
typedef  TYPE_2__ CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_UTF16BE ; 
 int /*<<< orphan*/  SQLITE_UTF16LE ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static CollSeq *FUNC8(
  sqlite3 *db,          /* Database connection */
  const char *zName,    /* Name of the collating sequence */
  int create            /* Create a new entry if true */
){
  CollSeq *pColl;
  pColl = FUNC4(&db->aCollSeq, zName);

  if( 0==pColl && create ){
    int nName = FUNC7(zName) + 1;
    pColl = FUNC3(db, 3*sizeof(*pColl) + nName);
    if( pColl ){
      CollSeq *pDel = 0;
      pColl[0].zName = (char*)&pColl[3];
      pColl[0].enc = SQLITE_UTF8;
      pColl[1].zName = (char*)&pColl[3];
      pColl[1].enc = SQLITE_UTF16LE;
      pColl[2].zName = (char*)&pColl[3];
      pColl[2].enc = SQLITE_UTF16BE;
      FUNC1(pColl[0].zName, zName, nName);
      pDel = FUNC5(&db->aCollSeq, pColl[0].zName, pColl);

      /* If a malloc() failure occurred in sqlite3HashInsert(), it will 
      ** return the pColl pointer to be deleted (because it wasn't added
      ** to the hash table).
      */
      FUNC0( pDel==0 || pDel==pColl );
      if( pDel!=0 ){
        FUNC6(db);
        FUNC2(db, pDel);
        pColl = 0;
      }
    }
  }
  return pColl;
}