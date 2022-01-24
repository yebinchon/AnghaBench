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
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  aBuf ;
struct TYPE_6__ {scalar_t__ rc; } ;
typedef  TYPE_1__ Error ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*) ; 
 int FUNC2 (char const*,int,...) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (int,char*,int) ; 

__attribute__((used)) static void FUNC9(
  Error *pErr,
  const char *zFrom,
  const char *zTo
){
  if( pErr->rc==SQLITE_OK ){
    i64 nByte = FUNC1(pErr, zFrom);
    if( nByte<0 ){
      FUNC6(pErr, FUNC4("no such file: %s", zFrom));
    }else{
      i64 iOff;
      char aBuf[1024];
      int fd1;
      int fd2;
      FUNC7(zTo);

      fd1 = FUNC2(zFrom, O_RDONLY);
      if( fd1<0 ){
        FUNC5(pErr, errno);
        return;
      }
      fd2 = FUNC2(zTo, O_RDWR|O_CREAT|O_EXCL, 0644);
      if( fd2<0 ){
        FUNC5(pErr, errno);
        FUNC0(fd1);
        return;
      }

      iOff = 0;
      while( iOff<nByte ){
        int nCopy = sizeof(aBuf);
        if( nCopy+iOff>nByte ){
          nCopy = nByte - iOff;
        }
        if( nCopy!=FUNC3(fd1, aBuf, nCopy) ){
          FUNC5(pErr, errno);
          break;
        }
        if( nCopy!=FUNC8(fd2, aBuf, nCopy) ){
          FUNC5(pErr, errno);
          break;
        }
        iOff += nCopy;
      }

      FUNC0(fd1);
      FUNC0(fd2);
    }
  }
}