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
struct TYPE_6__ {int avail_in; scalar_t__ total_out; int /*<<< orphan*/  avail_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  Z_DEFAULT_STRATEGY ; 
 int /*<<< orphan*/  Z_DEFLATED ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(
  const u8 *aIn, int nIn,         /* Input */
  u8 **ppOut, int *pnOut,         /* Output */
  char **pzErr                    /* OUT: Error message */
){
  sqlite3_int64 nAlloc = FUNC0(nIn);
  u8 *aOut;
  int rc = SQLITE_OK;

  aOut = (u8*)FUNC6(nAlloc);
  if( aOut==0 ){
    rc = SQLITE_NOMEM;
  }else{
    int res;
    z_stream str;
    FUNC4(&str, 0, sizeof(str));
    str.next_in = (Bytef*)aIn;
    str.avail_in = nIn;
    str.next_out = aOut;
    str.avail_out = nAlloc;

    FUNC3(&str, 9, Z_DEFLATED, -15, 8, Z_DEFAULT_STRATEGY);
    res = FUNC1(&str, Z_FINISH);

    if( res==Z_STREAM_END ){
      *ppOut = aOut;
      *pnOut = (int)str.total_out;
    }else{
      FUNC5(aOut);
      *pzErr = FUNC7("zipfile: deflate() error");
      rc = SQLITE_ERROR;
    }
    FUNC2(&str);
  }

  return rc;
}