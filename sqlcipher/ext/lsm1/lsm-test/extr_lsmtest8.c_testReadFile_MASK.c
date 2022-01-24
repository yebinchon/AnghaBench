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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (void*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC5(const char *zFile, int iOff, void *pOut, int nByte, int *pRc){
  if( *pRc==0 ){
    FILE *fd;
    fd = FUNC2(zFile, "rb");
    if( fd==0 ){
      *pRc = 1;
    }else{
      if( 0!=FUNC4(fd, iOff, SEEK_SET) ){
        *pRc = 1;
      }else{
        FUNC0( nByte>=0 );
        if( (size_t)nByte!=FUNC3(pOut, 1, nByte, fd) ){
          *pRc = 1;
        }
      }
      FUNC1(fd);
    }
  }
}