#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  slack; } ;
struct TYPE_8__ {struct TYPE_8__* link; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__* FTC_Node ;
typedef  TYPE_2__* FTC_Cache ;

/* Variables and functions */
 TYPE_1__** FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void
  FUNC2( FTC_Node   node,
                      FTC_Cache  cache )
  {
    FTC_Node  *pnode = FUNC0( cache, node->hash );


    node->link = *pnode;
    *pnode     = node;

    cache->slack--;
    FUNC1( cache );
  }