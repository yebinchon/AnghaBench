#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ authLevel; } ;
struct TYPE_11__ {int nDb; TYPE_3__* aDb; TYPE_1__ auth; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_10__ {int /*<<< orphan*/  zDbSName; TYPE_2__* pSchema; } ;
struct TYPE_9__ {int /*<<< orphan*/  tblHash; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_NAME ; 
 int OMIT_TEMPDB ; 
 char* TEMP_MASTER_NAME ; 
 scalar_t__ UAUTH_Admin ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 

Table *FUNC7(sqlite3 *db, const char *zName, const char *zDatabase){
  Table *p = 0;
  int i;

  /* All mutexes are required for schema access.  Make sure we hold them. */
  FUNC0( zDatabase!=0 || FUNC1(db) );
#if SQLITE_USER_AUTHENTICATION
  /* Only the admin user is allowed to know that the sqlite_user table
  ** exists */
  if( db->auth.authLevel<UAUTH_Admin && sqlite3UserAuthTable(zName)!=0 ){
    return 0;
  }
#endif
  while(1){
    for(i=OMIT_TEMPDB; i<db->nDb; i++){
      int j = (i<2) ? i^1 : i;   /* Search TEMP before MAIN */
      if( zDatabase==0 || FUNC4(zDatabase, db->aDb[j].zDbSName)==0 ){
        FUNC0( FUNC3(db, j, 0) );
        p = FUNC2(&db->aDb[j].pSchema->tblHash, zName);
        if( p ) return p;
      }
    }
    /* Not found.  If the name we were looking for was temp.sqlite_master
    ** then change the name to sqlite_temp_master and try again. */
    if( FUNC4(zName, MASTER_NAME)!=0 ) break;
    if( FUNC6(zDatabase, db->aDb[1].zDbSName)!=0 ) break;
    zName = TEMP_MASTER_NAME;
  }
  return 0;
}