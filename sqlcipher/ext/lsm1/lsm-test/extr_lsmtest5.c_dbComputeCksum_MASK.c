#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_4__ {int nFanout; } ;
typedef  TYPE_1__ DbParameters ;

/* Variables and functions */
 int DB_KEY_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dbCksum ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(
  DbParameters *pParam,           /* Database parameters */
  TestDb *pDb,                    /* Database connection handle */
  int iLevel,                     /* Level of checksum to compute */
  int iKey,                       /* Compute checksum for this key */
  int *pRc                        /* IN/OUT: Error code */
){
  u32 cksum = 0;
  if( *pRc==0 ){
    int nFirst;
    int nLast;
    int iFirst = 0;
    int iLast = 0;
    int i;
    int f = 1;
    char zFirst[DB_KEY_BYTES];
    char zLast[DB_KEY_BYTES];

    FUNC0( iLevel>=1 );
    for(i=0; i<iLevel; i++) f = f * pParam->nFanout;

    iFirst = f*(iKey/f);
    iLast = iFirst + f - 1;
    FUNC1(pParam, iLevel-1, iFirst, zFirst);
    FUNC1(pParam, iLevel-1, iLast, zLast);
    nFirst = FUNC2(zFirst);
    nLast = FUNC2(zLast);

    *pRc = FUNC3(pDb, (u32*)&cksum, 0, zFirst, nFirst, zLast, nLast,dbCksum);
  }

  return cksum;
}