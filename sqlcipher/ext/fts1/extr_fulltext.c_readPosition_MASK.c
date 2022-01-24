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
struct TYPE_6__ {int iLastPos; int /*<<< orphan*/  p; TYPE_1__* pDoclist; } ;
struct TYPE_5__ {int iType; } ;
typedef  TYPE_2__ DocListReader ;

/* Variables and functions */
 int DL_POSITIONS ; 
 int DL_POSITIONS_OFFSETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(DocListReader *pReader){
  int i;
  int iType = pReader->pDoclist->iType;
  FUNC0( iType>=DL_POSITIONS );
  FUNC0( !FUNC2(pReader) );

  pReader->p += FUNC1(pReader->p, &i);
  if( i==0 ){
    pReader->iLastPos = -1;
    return -1;
  }
  pReader->iLastPos += ((int) i)-1;
  if( iType>=DL_POSITIONS_OFFSETS ){
    /* Skip over offsets, ignoring them for now. */
    int iStart, iEnd;
    pReader->p += FUNC1(pReader->p, &iStart);
    pReader->p += FUNC1(pReader->p, &iEnd);
  }
  return pReader->iLastPos;
}