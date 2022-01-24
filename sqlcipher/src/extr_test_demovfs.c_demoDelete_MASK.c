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
typedef  int /*<<< orphan*/  sqlite3_vfs ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int MAXPATHNAME ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int SQLITE_IOERR_DELETE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char const*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(sqlite3_vfs *pVfs, const char *zPath, int dirSync){
  int rc;                         /* Return code */

  rc = FUNC5(zPath);
  if( rc!=0 && errno==ENOENT ) return SQLITE_OK;

  if( rc==0 && dirSync ){
    int dfd;                      /* File descriptor open on directory */
    int i;                        /* Iterator variable */
    char zDir[MAXPATHNAME+1];     /* Name of directory containing file zPath */

    /* Figure out the directory name from the path of the file deleted. */
    FUNC3(MAXPATHNAME, zDir, "%s", zPath);
    zDir[MAXPATHNAME] = '\0';
    for(i=FUNC4(zDir); i>1 && zDir[i]!='/'; i++);
    zDir[i] = '\0';

    /* Open a file-descriptor on the directory. Sync. Close. */
    dfd = FUNC2(zDir, O_RDONLY, 0);
    if( dfd<0 ){
      rc = -1;
    }else{
      rc = FUNC1(dfd);
      FUNC0(dfd);
    }
  }
  return (rc==0 ? SQLITE_OK : SQLITE_IOERR_DELETE);
}