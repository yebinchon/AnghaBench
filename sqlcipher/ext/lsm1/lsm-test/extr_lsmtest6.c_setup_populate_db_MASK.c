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
typedef  int /*<<< orphan*/  lsm_db ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  LSMTEST6_TESTDB ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(void){
  const char *azStr[] = {
    "one",   "one",
    "two",   "four",
    "three", "nine",
    "four",  "sixteen",
    "five",  "twentyfive",
    "six",   "thirtysix",
    "seven", "fourtynine",
    "eight", "sixtyfour",
  };
  int rc;
  int ii;
  lsm_db *pDb;

  FUNC7(LSMTEST6_TESTDB);

  rc = FUNC4(FUNC6(), &pDb);
  if( rc==LSM_OK ) rc = FUNC5(pDb, LSMTEST6_TESTDB);

  for(ii=0; rc==LSM_OK && ii<FUNC0(azStr); ii+=2){
    rc = FUNC2(pDb, azStr[ii], azStr[ii+1]);
  }
  FUNC3(pDb);

  FUNC8(LSMTEST6_TESTDB, "log");
  FUNC1( rc==LSM_OK );
}