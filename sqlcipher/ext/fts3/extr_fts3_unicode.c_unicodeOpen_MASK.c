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
struct TYPE_3__ {unsigned char const* aInput; int nInput; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ unicode_cursor ;
typedef  int /*<<< orphan*/  sqlite3_tokenizer_cursor ;
typedef  int /*<<< orphan*/  sqlite3_tokenizer ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(
  sqlite3_tokenizer *p,           /* The tokenizer */
  const char *aInput,             /* Input string */
  int nInput,                     /* Size of string aInput in bytes */
  sqlite3_tokenizer_cursor **pp   /* OUT: New cursor object */
){
  unicode_cursor *pCsr;

  pCsr = (unicode_cursor *)FUNC2(sizeof(unicode_cursor));
  if( pCsr==0 ){
    return SQLITE_NOMEM;
  }
  FUNC1(pCsr, 0, sizeof(unicode_cursor));

  pCsr->aInput = (const unsigned char *)aInput;
  if( aInput==0 ){
    pCsr->nInput = 0;
  }else if( nInput<0 ){
    pCsr->nInput = (int)FUNC3(aInput);
  }else{
    pCsr->nInput = nInput;
  }

  *pp = &pCsr->base;
  FUNC0(p);
  return SQLITE_OK;
}