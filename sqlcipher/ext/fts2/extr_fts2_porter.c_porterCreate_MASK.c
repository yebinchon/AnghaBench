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
typedef  int /*<<< orphan*/  sqlite3_tokenizer ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ porter_tokenizer ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(
  int argc, const char * const *argv,
  sqlite3_tokenizer **ppTokenizer
){
  porter_tokenizer *t;
  t = (porter_tokenizer *) FUNC1(sizeof(*t));
  if( t==NULL ) return SQLITE_NOMEM;
  FUNC0(t, 0, sizeof(*t));
  *ppTokenizer = &t->base;
  return SQLITE_OK;
}