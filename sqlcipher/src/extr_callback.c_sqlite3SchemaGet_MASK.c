#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {scalar_t__ file_format; int /*<<< orphan*/  enc; int /*<<< orphan*/  fkeyHash; int /*<<< orphan*/  trigHash; int /*<<< orphan*/  idxHash; int /*<<< orphan*/  tblHash; } ;
typedef  TYPE_1__ Schema ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlite3SchemaClear ; 

Schema *FUNC4(sqlite3 *db, Btree *pBt){
  Schema * p;
  if( pBt ){
    p = (Schema *)FUNC0(pBt, sizeof(Schema), sqlite3SchemaClear);
  }else{
    p = (Schema *)FUNC1(0, sizeof(Schema));
  }
  if( !p ){
    FUNC3(db);
  }else if ( 0==p->file_format ){
    FUNC2(&p->tblHash);
    FUNC2(&p->idxHash);
    FUNC2(&p->trigHash);
    FUNC2(&p->fkeyHash);
    p->enc = SQLITE_UTF8;
  }
  return p;
}