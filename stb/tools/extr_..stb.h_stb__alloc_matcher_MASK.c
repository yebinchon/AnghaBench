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
struct TYPE_5__ {int /*<<< orphan*/  dfa_result; int /*<<< orphan*/  dfa_mapping; int /*<<< orphan*/  dfa; int /*<<< orphan*/  dfa_start; scalar_t__ does_lex; scalar_t__ match_start; scalar_t__ num_charset; int /*<<< orphan*/  nodes; scalar_t__ start_node; } ;
typedef  TYPE_1__ stb_matcher ;

/* Variables and functions */
 int /*<<< orphan*/  STB__DFA_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void**,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static stb_matcher *FUNC3(void)
{
   stb_matcher *matcher = (stb_matcher *) FUNC2(0,sizeof(*matcher));

   matcher->start_node  = 0;
   FUNC1((void **) &matcher->nodes, matcher);
   matcher->num_charset = 0;
   matcher->match_start = 0;
   matcher->does_lex    = 0;

   matcher->dfa_start   = STB__DFA_UNDEF;
   FUNC1((void **) &matcher->dfa, matcher);
   FUNC1((void **) &matcher->dfa_mapping, matcher);
   FUNC1((void **) &matcher->dfa_result, matcher);

   FUNC0(matcher);

   return matcher;
}