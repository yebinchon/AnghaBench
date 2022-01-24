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
struct TYPE_3__ {int nColumn; char** azColl; scalar_t__* aiColumn; } ;
typedef  TYPE_1__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

__attribute__((used)) static int FUNC2(const char *zColl, Index *pIndex){
  int i;
  FUNC0( zColl!=0 );
  for(i=0; i<pIndex->nColumn; i++){
    const char *z = pIndex->azColl[i];
    FUNC0( z!=0 || pIndex->aiColumn[i]<0 );
    if( pIndex->aiColumn[i]>=0 && 0==FUNC1(z, zColl) ){
      return 1;
    }
  }
  return 0;
}