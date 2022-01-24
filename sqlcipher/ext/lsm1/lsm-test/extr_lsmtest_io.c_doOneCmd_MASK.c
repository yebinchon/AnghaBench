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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ i64 ;
struct TYPE_3__ {int nWrite; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ IoContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(
  IoContext *pCtx,
  u8 *aData,
  int pgsz,
  char *zCmd,
  char **pzOut
){
  char c;
  char *z = zCmd;

  while( FUNC4(*z) ) z++;
  c = *z;

  if( c==0 ){
    if( pzOut ) *pzOut = z;
    return 0;
  }

  if( c=='s' || c=='S' ){
    if( pzOut ) *pzOut = &z[1];
    return FUNC0(pCtx->fd);
  }

  if( FUNC3(c) ){
    i64 iOff = 0;
    int nByte = 0;
    int rc = 0;
    int nPg;
    int iPg;

    nByte = (int)FUNC1(z, &z, &rc);
    if( rc || *z!='@' ) goto bad_command;
    z++;
    iOff = FUNC1(z, &z, &rc);
    if( rc || (FUNC4(*z)==0 && *z!='\0') ) goto bad_command;
    if( pzOut ) *pzOut = z;

    nPg = (nByte+pgsz-1) / pgsz;
    FUNC2(pCtx->fd, (off_t)iOff, SEEK_SET);
    for(iPg=0; iPg<nPg; iPg++){
      FUNC6(pCtx->fd, aData, pgsz);
    }
    pCtx->nWrite += nByte/1024;

    return 0;
  }

 bad_command:
  FUNC5("unrecognized command: %s", zCmd);
  return 1;
}