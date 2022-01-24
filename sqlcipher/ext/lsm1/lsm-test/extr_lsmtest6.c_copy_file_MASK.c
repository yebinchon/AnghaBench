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
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (int,scalar_t__) ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int _O_BINARY ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC13(const char *zFrom, const char *zTo, int isDatabase){

  if( FUNC1(zFrom, F_OK) ){
    FUNC11(zTo);
  }else{
    int fd1;
    int fd2;
    off_t sz;
    off_t i;
    struct stat buf;
    u8 *aBuf;

    fd1 = FUNC7(zFrom, O_RDONLY | _O_BINARY, 0644);
    fd2 = FUNC7(zTo, O_RDWR | O_CREAT | _O_BINARY, 0644);

    FUNC3(fd1, &buf);
    sz = buf.st_size;
    FUNC4(fd2, sz);

    aBuf = FUNC10(4096);
    for(i=0; i<sz; i+=4096){
      int bLockPage = isDatabase && i == 0;
      int nByte = FUNC0((bLockPage ? 4066 : 4096), sz - i);
      FUNC6(aBuf, 0, 4096);
      FUNC8(fd1, aBuf, nByte);
      FUNC12(fd2, aBuf, nByte);
      if( bLockPage ){
        FUNC5(fd1, 4096, SEEK_SET);
        FUNC5(fd2, 4096, SEEK_SET);
      }
    }
    FUNC9(aBuf);

    FUNC2(fd1);
    FUNC2(fd2);
  }
}