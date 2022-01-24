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
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/ * pDfltColl; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 int SQLITE_UTF16BE ; 
 int SQLITE_UTF16LE ; 
 int SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,int) ; 

CollSeq *FUNC2(
  sqlite3 *db,
  u8 enc,
  const char *zName,
  int create
){
  CollSeq *pColl;
  if( zName ){
    pColl = FUNC1(db, zName, create);
  }else{
    pColl = db->pDfltColl;
  }
  FUNC0( SQLITE_UTF8==1 && SQLITE_UTF16LE==2 && SQLITE_UTF16BE==3 );
  FUNC0( enc>=SQLITE_UTF8 && enc<=SQLITE_UTF16BE );
  if( pColl ) pColl += enc-1;
  return pColl;
}