#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vfs ;
struct TYPE_3__ {scalar_t__ nRef; int sz; scalar_t__ a; scalar_t__ zFilename; } ;
typedef  TYPE_1__ VFile ;

/* Variables and functions */
 int SQLITE_IOERR_DELETE ; 
 int SQLITE_OK ; 
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(
  sqlite3_vfs *pVfs,
  const char *zFilename,
  int syncdir
){
  VFile *pVFile = FUNC0(zFilename);
  if( pVFile==0 ) return SQLITE_OK;
  if( pVFile->nRef==0 ){
    FUNC1(pVFile->zFilename);
    pVFile->zFilename = 0;
    pVFile->sz = -1;
    FUNC1(pVFile->a);
    pVFile->a = 0;
    return SQLITE_OK;
  }
  return SQLITE_IOERR_DELETE;
}