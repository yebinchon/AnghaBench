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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int nNode; int oom; int /*<<< orphan*/ * aUp; } ;
typedef  TYPE_1__ JsonParse ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(JsonParse *pParse){
  u32 *aUp;
  FUNC0( pParse->aUp==0 );
  aUp = pParse->aUp = FUNC2( sizeof(u32)*pParse->nNode );
  if( aUp==0 ){
    pParse->oom = 1;
    return SQLITE_NOMEM;
  }
  FUNC1(pParse, 0, 0);
  return SQLITE_OK;
}