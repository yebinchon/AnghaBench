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
struct compareInfo {int dummy; } ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_FUNC_CASE ; 
 int SQLITE_FUNC_LIKE ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  globInfo ; 
 int /*<<< orphan*/  likeFunc ; 
 int /*<<< orphan*/  likeInfoAlt ; 
 int /*<<< orphan*/  likeInfoNorm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,struct compareInfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(sqlite3 *db, int caseSensitive){
  struct compareInfo *pInfo;
  if( caseSensitive ){
    pInfo = (struct compareInfo*)&likeInfoAlt;
  }else{
    pInfo = (struct compareInfo*)&likeInfoNorm;
  }
  FUNC1(db, "like", 2, SQLITE_UTF8, pInfo, likeFunc, 0, 0, 0, 0, 0);
  FUNC1(db, "like", 3, SQLITE_UTF8, pInfo, likeFunc, 0, 0, 0, 0, 0);
  FUNC1(db, "glob", 2, SQLITE_UTF8, 
      (struct compareInfo*)&globInfo, likeFunc, 0, 0, 0, 0, 0);
  FUNC0(db, "glob", SQLITE_FUNC_LIKE | SQLITE_FUNC_CASE);
  FUNC0(db, "like", 
      caseSensitive ? (SQLITE_FUNC_LIKE | SQLITE_FUNC_CASE) : SQLITE_FUNC_LIKE);
}