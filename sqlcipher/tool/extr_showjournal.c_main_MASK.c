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

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ db ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int fileSize ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int pageSize ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int sectorSize ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char **argv){
  int nPage, cnt;
  int iOfst;
  if( argc!=2 ){
    FUNC4(stderr,"Usage: %s FILENAME\n", argv[0]);
    FUNC1(1);
  }
  db = FUNC3(argv[1], "rb");
  if( db==0 ){
    FUNC4(stderr,"%s: can't open %s\n", argv[0], argv[1]);
    FUNC1(1);
  }
  FUNC5(db, 0, SEEK_END);
  fileSize = FUNC6(db);
  FUNC8("journal file size: %d bytes\n", fileSize);
  FUNC5(db, 0, SEEK_SET);
  iOfst = 0;
  while( iOfst<fileSize ){
    cnt = nPage = (int)FUNC0(iOfst);
    if( cnt==0 ){
      cnt = (fileSize - sectorSize)/(pageSize+8);
    }
    iOfst += sectorSize;
    while( cnt && iOfst<fileSize ){
      FUNC7(iOfst);
      iOfst += pageSize+8;
    }
    iOfst = (iOfst/sectorSize + 1)*sectorSize;
  }
  FUNC2(db);
  return 0;
}