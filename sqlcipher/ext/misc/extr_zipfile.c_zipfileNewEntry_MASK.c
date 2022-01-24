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
struct TYPE_7__ {scalar_t__ zFile; } ;
struct TYPE_8__ {TYPE_1__ cds; } ;
typedef  TYPE_2__ ZipfileEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static ZipfileEntry *FUNC4(const char *zPath){
  ZipfileEntry *pNew;
  pNew = FUNC2(sizeof(ZipfileEntry));
  if( pNew ){
    FUNC0(pNew, 0, sizeof(ZipfileEntry));
    pNew->cds.zFile = FUNC3("%s", zPath);
    if( pNew->cds.zFile==0 ){
      FUNC1(pNew);
      pNew = 0;
    }
  }
  return pNew;
}