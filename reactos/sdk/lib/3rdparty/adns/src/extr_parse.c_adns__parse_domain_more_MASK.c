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
struct TYPE_5__ {scalar_t__ used; } ;
typedef  TYPE_1__ vbuf ;
typedef  int parsedomain_flags ;
typedef  int /*<<< orphan*/  findlabel_state ;
typedef  int const byte ;
typedef  scalar_t__ adns_status ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_query ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int const*,int) ; 
 scalar_t__ adns_s_answerdomaininvalid ; 
 scalar_t__ adns_s_nomemory ; 
 scalar_t__ adns_s_ok ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int pdf_quoteok ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*,int) ; 

adns_status FUNC5(findlabel_state *fls, adns_state ads,
				    adns_query qu, vbuf *vb, parsedomain_flags flags,
				    const byte *dgram) {
  int lablen, labstart, i, ch, first;
  adns_status st;

  first= 1;
  for (;;) {
    st= FUNC0(fls,&lablen,&labstart);
    if (st) return st;
    if (lablen<0) { vb->used=0; return adns_s_ok; }
    if (!lablen) break;
    if (first) {
      first= 0;
    } else {
      if (!FUNC1(vb,(byte*)".",1)) return adns_s_nomemory;
    }
    if (flags & pdf_quoteok) {
      if (!FUNC4(vb,dgram+labstart,lablen))
	return adns_s_nomemory;
    } else {
      ch= dgram[labstart];
      if (!FUNC2(ch) && !FUNC3(ch)) return adns_s_answerdomaininvalid;
      for (i= labstart+1; i<labstart+lablen; i++) {
	ch= dgram[i];
	if (ch != '-' && !FUNC2(ch) && !FUNC3(ch))
	  return adns_s_answerdomaininvalid;
      }
      if (!FUNC1(vb,dgram+labstart,lablen))
	return adns_s_nomemory;
    }
  }
  if (!FUNC1(vb,(byte*)"",1)) return adns_s_nomemory;
  return adns_s_ok;
}