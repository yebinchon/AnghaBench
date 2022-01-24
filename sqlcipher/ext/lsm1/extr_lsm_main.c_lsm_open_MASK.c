#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bReadonly; scalar_t__ pShmhdr; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  aSnapshot; int /*<<< orphan*/  pFS; scalar_t__ pDatabase; } ;
typedef  TYPE_1__ lsm_db ;

/* Variables and functions */
 int LSM_MISUSE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(lsm_db *pDb, const char *zFilename){
  int rc;

  if( pDb->pDatabase ){
    rc = LSM_MISUSE;
  }else{
    char *zFull;

    /* Translate the possibly relative pathname supplied by the user into
    ** an absolute pathname. This is required because the supplied path
    ** is used (either directly or with "-log" appended to it) for more 
    ** than one purpose - to open both the database and log files, and 
    ** perhaps to unlink the log file during disconnection. An absolute
    ** path is required to ensure that the correct files are operated
    ** on even if the application changes the cwd.  */
    rc = FUNC2(pDb->pEnv, zFilename, &zFull);
    FUNC0( rc==LSM_OK || zFull==0 );

    /* Connect to the database. */
    if( rc==LSM_OK ){
      rc = FUNC6(pDb, zFull);
    }

    if( pDb->bReadonly==0 ){
      /* Configure the file-system connection with the page-size and block-size
      ** of this database. Even if the database file is zero bytes in size
      ** on disk, these values have been set in shared-memory by now, and so 
      ** are guaranteed not to change during the lifetime of this connection.  
      */
      if( rc==LSM_OK && LSM_OK==(rc = FUNC4(pDb, 0)) ){
        FUNC9(pDb->pFS, FUNC5(pDb->aSnapshot));
        FUNC8(pDb->pFS, FUNC3(pDb->aSnapshot));
      }
    }

    FUNC7(pDb->pEnv, zFull);
    FUNC1(pDb);
  }

  FUNC0( pDb->bReadonly==0 || pDb->bReadonly==1 );
  FUNC0( rc!=LSM_OK || (pDb->pShmhdr==0)==(pDb->bReadonly==1) );

  return rc;
}