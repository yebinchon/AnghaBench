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
struct TYPE_3__ {int nColumn; int /*<<< orphan*/  azContentColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  int /*<<< orphan*/  StringBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC4(fulltext_vtab *v){
  StringBuffer sb;
  int i;

  FUNC2(&sb);
  FUNC0(&sb, "insert into %_content (rowid, ");
  FUNC1(&sb, v->nColumn, v->azContentColumn);
  FUNC0(&sb, ") values (?");
  for(i=0; i<v->nColumn; ++i)
    FUNC0(&sb, ", ?");
  FUNC0(&sb, ")");
  return FUNC3(&sb);
}