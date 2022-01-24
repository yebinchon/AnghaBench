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
struct TYPE_3__ {int nFirst; int nLast; int nStep; char** azCksum; } ;
typedef  TYPE_1__ CksumDb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

char *FUNC1(CksumDb *p, int nRow){
  int i;
  FUNC0( nRow>=p->nFirst );
  FUNC0( nRow<=p->nLast );
  FUNC0( ((nRow-p->nFirst) % p->nStep)==0 );

  i = (nRow - p->nFirst) / p->nStep;
  return p->azCksum[i];
}