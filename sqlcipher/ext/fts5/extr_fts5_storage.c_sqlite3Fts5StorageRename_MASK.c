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
struct TYPE_7__ {scalar_t__ eContent; scalar_t__ bColumnsize; } ;
struct TYPE_6__ {TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FTS5_CONTENT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int*,char*,char const*) ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2(Fts5Storage *pStorage, const char *zName){
  Fts5Config *pConfig = pStorage->pConfig;
  int rc = FUNC1(pStorage);

  FUNC0(pConfig, &rc, "data", zName);
  FUNC0(pConfig, &rc, "idx", zName);
  FUNC0(pConfig, &rc, "config", zName);
  if( pConfig->bColumnsize ){
    FUNC0(pConfig, &rc, "docsize", zName);
  }
  if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
    FUNC0(pConfig, &rc, "content", zName);
  }
  return rc;
}