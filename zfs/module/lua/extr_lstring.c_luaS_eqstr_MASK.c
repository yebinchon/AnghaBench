#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ tt; } ;
struct TYPE_10__ {TYPE_1__ tsv; } ;
typedef  TYPE_2__ TString ;

/* Variables and functions */
 scalar_t__ LUA_TSHRSTR ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*) ; 

int FUNC2 (TString *a, TString *b) {
  return (a->tsv.tt == b->tsv.tt) &&
         (a->tsv.tt == LUA_TSHRSTR ? FUNC0(a, b) : FUNC1(a, b));
}