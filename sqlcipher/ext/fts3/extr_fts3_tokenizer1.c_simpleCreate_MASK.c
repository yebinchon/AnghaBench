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
typedef  int /*<<< orphan*/  sqlite3_tokenizer ;
struct TYPE_4__ {int* delim; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ simple_tokenizer ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const* const) ; 

__attribute__((used)) static int FUNC5(
  int argc, const char * const *argv,
  sqlite3_tokenizer **ppTokenizer
){
  simple_tokenizer *t;

  t = (simple_tokenizer *) FUNC3(sizeof(*t));
  if( t==NULL ) return SQLITE_NOMEM;
  FUNC1(t, 0, sizeof(*t));

  /* TODO(shess) Delimiters need to remain the same from run to run,
  ** else we need to reindex.  One solution would be a meta-table to
  ** track such information in the database, then we'd only want this
  ** information on the initial create.
  */
  if( argc>1 ){
    int i, n = (int)FUNC4(argv[1]);
    for(i=0; i<n; i++){
      unsigned char ch = argv[1][i];
      /* We explicitly don't support UTF-8 delimiters for now. */
      if( ch>=0x80 ){
        FUNC2(t);
        return SQLITE_ERROR;
      }
      t->delim[ch] = 1;
    }
  } else {
    /* Mark non-alphanumeric ASCII characters as delimiters */
    int i;
    for(i=1; i<0x80; i++){
      t->delim[i] = !FUNC0(i) ? -1 : 0;
    }
  }

  *ppTokenizer = &t->base;
  return SQLITE_OK;
}