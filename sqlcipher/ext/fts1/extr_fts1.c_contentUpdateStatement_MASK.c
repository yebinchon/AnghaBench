#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nColumn; char** azContentColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_7__ {char const* s; } ;
typedef  TYPE_2__ StringBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static const char *FUNC2(fulltext_vtab *v){
  StringBuffer sb;
  int i;

  FUNC1(&sb);
  FUNC0(&sb, "update %_content set ");
  for(i=0; i<v->nColumn; ++i) {
    if( i>0 ){
      FUNC0(&sb, ", ");
    }
    FUNC0(&sb, v->azContentColumn[i]);
    FUNC0(&sb, " = ?");
  }
  FUNC0(&sb, " where rowid = ?");
  return sb.s;
}