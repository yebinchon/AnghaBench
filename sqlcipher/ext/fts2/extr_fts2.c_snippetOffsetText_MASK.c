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
typedef  int /*<<< orphan*/  zBuf ;
struct snippetMatch {int /*<<< orphan*/  nByte; int /*<<< orphan*/  iStart; int /*<<< orphan*/  iTerm; int /*<<< orphan*/  iCol; } ;
struct TYPE_3__ {int nMatch; int /*<<< orphan*/  nOffset; int /*<<< orphan*/  zOffset; struct snippetMatch* aMatch; } ;
typedef  int /*<<< orphan*/  StringBuffer ;
typedef  TYPE_1__ Snippet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(Snippet *p){
  int i;
  int cnt = 0;
  StringBuffer sb;
  char zBuf[200];
  if( p->zOffset ) return;
  FUNC1(&sb);
  for(i=0; i<p->nMatch; i++){
    struct snippetMatch *pMatch = &p->aMatch[i];
    zBuf[0] = ' ';
    FUNC2(sizeof(zBuf)-1, &zBuf[cnt>0], "%d %d %d %d",
        pMatch->iCol, pMatch->iTerm, pMatch->iStart, pMatch->nByte);
    FUNC0(&sb, zBuf);
    cnt++;
  }
  p->zOffset = FUNC3(&sb);
  p->nOffset = FUNC4(&sb);
}