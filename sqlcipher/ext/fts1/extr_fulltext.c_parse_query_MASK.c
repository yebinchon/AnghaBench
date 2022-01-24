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
struct TYPE_6__ {int /*<<< orphan*/  pTokenizer; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_7__ {int /*<<< orphan*/ * pTerm; scalar_t__ nTerms; } ;
typedef  TYPE_2__ Query ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(fulltext_vtab *v, const char *zQuery, Query *pQuery){
  char *zQuery1 = FUNC1(zQuery);
  int in_phrase = 0;
  char *s = zQuery1;
  pQuery->nTerms = 0;
  pQuery->pTerm = NULL;

  while( *s ){
    char *t = s;
    while( *t ){
      if( *t=='"' ){
        *t++ = '\0';
        break;
      }
      ++t;
    }
    if( *s ){
      FUNC2(v->pTokenizer, s, in_phrase, pQuery);
    }
    s = t;
    in_phrase = !in_phrase;
  }
  
  FUNC0(zQuery1);
  return SQLITE_OK;
}