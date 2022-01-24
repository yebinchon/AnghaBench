#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nColumn; int /*<<< orphan*/  azContentColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_8__ {char const* s; } ;
typedef  TYPE_2__ StringBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static const char *FUNC3(fulltext_vtab *v){
  StringBuffer sb;
  int i;

  FUNC2(&sb);
  FUNC0(&sb, "insert into %_content (rowid, ");
  FUNC1(&sb, v->nColumn, v->azContentColumn);
  FUNC0(&sb, ") values (?");
  for(i=0; i<v->nColumn; ++i)
    FUNC0(&sb, ", ?");
  FUNC0(&sb, ")");
  return sb.s;
}