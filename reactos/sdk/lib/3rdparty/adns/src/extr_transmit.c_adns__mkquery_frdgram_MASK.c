#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vbuf ;
typedef  int /*<<< orphan*/  findlabel_state ;
typedef  int /*<<< orphan*/  byte ;
typedef  scalar_t__ adns_status ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_rrtype ;
typedef  int /*<<< orphan*/  adns_queryflags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ adns_s_ok ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 

adns_status FUNC9(adns_state ads, vbuf *vb, int *id_r,
				  const byte *qd_dgram, int qd_dglen, int qd_begin,
				  adns_rrtype type, adns_queryflags flags) {
  byte *rqp;
  findlabel_state fls;
  int lablen, labstart;
  adns_status st;

  st= FUNC8(ads,vb,id_r,qd_dglen); if (st) return st;

  FUNC1(vb);

  FUNC4(&fls,ads,-1,0,qd_dgram,qd_dglen,qd_dglen,qd_begin,0);
  for (;;) {
    st= FUNC3(&fls,&lablen,&labstart); FUNC5(!st);
    if (!lablen) break;
    FUNC5(lablen<255);
    FUNC0(lablen);
    FUNC6(rqp,qd_dgram+labstart, (size_t) lablen);
    rqp+= lablen;
  }
  FUNC0(0);

  FUNC2(vb);

  st= FUNC7(vb,type);

  return adns_s_ok;
}