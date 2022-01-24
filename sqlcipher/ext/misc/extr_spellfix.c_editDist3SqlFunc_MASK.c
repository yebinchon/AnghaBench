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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  EditDist3Lang ;
typedef  int /*<<< orphan*/  EditDist3FromString ;
typedef  int /*<<< orphan*/  EditDist3Config ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  EditDist3Config *pConfig = (EditDist3Config*)FUNC9(context);
  sqlite3 *db = FUNC5(context);
  int rc;
  if( argc==1 ){
    const char *zTable = (const char*)FUNC12(argv[0]);
    rc = FUNC0(pConfig, db, zTable);
    if( rc ) FUNC6(context, rc);
  }else{
    const char *zA = (const char*)FUNC12(argv[0]);
    const char *zB = (const char*)FUNC12(argv[1]);
    int nA = FUNC10(argv[0]);
    int nB = FUNC10(argv[1]);
    int iLang = argc==3 ? FUNC11(argv[2]) : 0;
    const EditDist3Lang *pLang = FUNC2(pConfig, iLang);
    EditDist3FromString *pFrom;
    int dist;

    pFrom = FUNC4(pLang, zA, nA);
    if( pFrom==0 ){
      FUNC7(context);
      return;
    }
    dist = FUNC1(pFrom, zB, nB, pLang, 0);
    FUNC3(pFrom);
    if( dist==(-1) ){
      FUNC7(context);
    }else{
      FUNC8(context, dist);
    }
  } 
}