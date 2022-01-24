#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* aNode; int nNode; int iOff; int /*<<< orphan*/  iChild; } ;
typedef  TYPE_1__ NodeReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(NodeReader *p, const char *aNode, int nNode){
  FUNC0(p, 0, sizeof(NodeReader));
  p->aNode = aNode;
  p->nNode = nNode;

  /* Figure out if this is a leaf or an internal node. */
  if( p->aNode[0] ){
    /* An internal node. */
    p->iOff = 1 + FUNC2(&p->aNode[1], &p->iChild);
  }else{
    p->iOff = 1;
  }

  return FUNC1(p);
}