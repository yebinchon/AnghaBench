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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_collate_func ; 
 char* zNeededCollation ; 

__attribute__((used)) static void FUNC3(
  void *pCtx, 
  sqlite3 *db,
  int eTextRep,
  const void *pName
){
  int enc = FUNC0(db);
  int i;
  char *z;
  for(z = (char*)pName, i=0; *z || z[1]; z++){
    if( *z ) zNeededCollation[i++] = *z;
  }
  zNeededCollation[i] = 0;
  FUNC2(
      db, "test_collate", FUNC0(db), FUNC1(enc), test_collate_func);
}