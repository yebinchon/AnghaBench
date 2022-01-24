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
typedef  int /*<<< orphan*/  TestDb ;

/* Variables and functions */
 int TEST_CKSUM_BYTES ; 
 int FUNC0 (char*,char const*) ; 
 int FUNC1 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(
  const char *zFile,              /* Path to LSM database */
  int bCompress,                  /* True if db is compressed */
  const char *zExpect1,           /* Expected checksum 1 */
  const char *zExpect2,           /* Expected checksum 2 (or NULL) */
  int *pRc                        /* IN/OUT: Test case error code */
){
  if( *pRc==0 ){
    char zCksum[TEST_CKSUM_BYTES];
    TestDb *pDb;

    *pRc = FUNC1((bCompress?"compression=1 mmap=0":""), zFile, 0, &pDb);
    FUNC2(pDb, zCksum);
    FUNC3(&pDb);

    if( *pRc==0 ){
      int r1 = 0;
      int r2 = -1;

      r1 = FUNC0(zCksum, zExpect1);
      if( zExpect2 ) r2 = FUNC0(zCksum, zExpect2);
      if( r1 && r2 ){
        if( zExpect2 ){
          FUNC4("testCompareCksumLsmdb: \"%s\" != (\"%s\" OR \"%s\")",
              zCksum, zExpect1, zExpect2
          );
        }else{
          FUNC4("testCompareCksumLsmdb: \"%s\" != \"%s\"",
              zCksum, zExpect1
          );
        }
        *pRc = 1;
        FUNC5();
      }
    }
  }
}