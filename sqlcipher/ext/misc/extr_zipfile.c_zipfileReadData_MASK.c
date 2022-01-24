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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(
  FILE *pFile,                    /* Read from this file */
  u8 *aRead,                      /* Read into this buffer */
  int nRead,                      /* Number of bytes to read */
  i64 iOff,                       /* Offset to read from */
  char **pzErrmsg                 /* OUT: Error message (from sqlite3_malloc) */
){
  size_t n;
  FUNC1(pFile, (long)iOff, SEEK_SET);
  n = FUNC0(aRead, 1, nRead, pFile);
  if( (int)n!=nRead ){
    *pzErrmsg = FUNC2("error in fread()");
    return SQLITE_ERROR;
  }
  return SQLITE_OK;
}