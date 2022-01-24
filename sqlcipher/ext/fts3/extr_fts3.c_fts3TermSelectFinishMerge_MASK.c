#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char** aaOutput; int* anOutput; } ;
typedef  TYPE_1__ TermSelect ;
struct TYPE_6__ {int /*<<< orphan*/  bDescIdx; } ;
typedef  TYPE_2__ Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (char**) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,char*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(Fts3Table *p, TermSelect *pTS){
  char *aOut = 0;
  int nOut = 0;
  int i;

  /* Loop through the doclists in the aaOutput[] array. Merge them all
  ** into a single doclist.
  */
  for(i=0; i<FUNC0(pTS->aaOutput); i++){
    if( pTS->aaOutput[i] ){
      if( !aOut ){
        aOut = pTS->aaOutput[i];
        nOut = pTS->anOutput[i];
        pTS->aaOutput[i] = 0;
      }else{
        int nNew;
        char *aNew;

        int rc = FUNC1(p->bDescIdx, 
            pTS->aaOutput[i], pTS->anOutput[i], aOut, nOut, &aNew, &nNew
        );
        if( rc!=SQLITE_OK ){
          FUNC2(aOut);
          return rc;
        }

        FUNC2(pTS->aaOutput[i]);
        FUNC2(aOut);
        pTS->aaOutput[i] = 0;
        aOut = aNew;
        nOut = nNew;
      }
    }
  }

  pTS->aaOutput[0] = aOut;
  pTS->anOutput[0] = nOut;
  return SQLITE_OK;
}