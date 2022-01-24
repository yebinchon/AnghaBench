#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ fd; int nWrite; } ;
typedef  TYPE_1__ u8 ;
typedef  TYPE_1__ IoContext ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int _O_BINARY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,int,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(int nArg, char **azArg){
  IoContext ctx;
  int pgsz;
  char *zFile;
  char *zPgsz;
  int i;
  int rc = 0;

  char *zStdin = 0;
  char *z;

  u8 *aData;

  FUNC5(&ctx, 0, sizeof(IoContext));
  if( nArg<2 ){
    FUNC11("FILE PGSZ ?CMD-1 ...?");
    return -1;
  }
  zFile = azArg[0];
  zPgsz = azArg[1];

  pgsz = (int)FUNC3(zPgsz, 0, &rc);
  if( pgsz<=0 ){
    FUNC10("Ridiculous page size: %d", pgsz);
    return -1;
  }
  aData = FUNC4(pgsz);
  FUNC5(aData, 0x77, pgsz);

  ctx.fd = FUNC6(zFile, O_RDWR|O_CREAT|_O_BINARY, 0644);
  if( ctx.fd<0 ){
    FUNC7("open: ");
    return -1;
  }

  if( nArg==2 ){
    FUNC9(&zStdin);
    FUNC13();
    z = zStdin;
    while( *z && rc==0 ){
      rc = FUNC1(&ctx, aData, pgsz, z, &z);
    }
  }else{
    FUNC13();
    for(i=2; i<nArg; i++){
      rc = FUNC1(&ctx, aData, pgsz, azArg[i], 0);
    }
  }

  FUNC8("%dK written in %d ms\n", ctx.nWrite, FUNC12());

  FUNC2(zStdin);
  FUNC0(ctx.fd);

  return 0;
}