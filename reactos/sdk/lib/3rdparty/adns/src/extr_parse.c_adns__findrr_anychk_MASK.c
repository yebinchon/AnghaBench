#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  findlabel_state ;
typedef  int byte ;
typedef  scalar_t__ adns_status ;
typedef  TYPE_1__* adns_query ;
struct TYPE_4__ {int /*<<< orphan*/  ads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 unsigned long MAXTTLBELIEVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_1__*,int const*,int,int,int,int*) ; 
 scalar_t__ adns_s_ok ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

adns_status FUNC6(adns_query qu, int serv,
				const byte *dgram, int dglen, int *cbyte_io,
				int *type_r, int *class_r, unsigned long *ttl_r,
				int *rdlen_r, int *rdstart_r,
				const byte *eo_dgram, int eo_dglen, int eo_cbyte,
				int *eo_matched_r) {
  findlabel_state fls, eo_fls;
  int cbyte;

  int tmp, rdlen, mismatch;
  unsigned long ttl;
  int lablen, labstart, ch;
  int eo_lablen, eo_labstart, eo_ch;
  adns_status st;

  cbyte= *cbyte_io;

  FUNC3(&fls,qu->ads, serv,qu, dgram,dglen,dglen,cbyte,&cbyte);
  if (eo_dgram) {
    FUNC3(&eo_fls,qu->ads, -1,0, eo_dgram,eo_dglen,eo_dglen,eo_cbyte,0);
    mismatch= 0;
  } else {
    mismatch= 1;
  }

  for (;;) {
    st= FUNC2(&fls,&lablen,&labstart);
    if (st) return st;
    if (lablen<0) goto x_truncated;

    if (!mismatch) {
      st= FUNC2(&eo_fls,&eo_lablen,&eo_labstart);
      FUNC4(!st); FUNC4(eo_lablen>=0);
      if (lablen != eo_lablen) mismatch= 1;
      while (!mismatch && eo_lablen-- > 0) {
	ch= dgram[labstart++]; if (FUNC5(ch)) ch &= ~32;
	eo_ch= eo_dgram[eo_labstart++]; if (FUNC5(eo_ch)) eo_ch &= ~32;
	if (ch != eo_ch) mismatch= 1;
      }
    }
    if (!lablen) break;
  }
  if (eo_matched_r) *eo_matched_r= !mismatch;

  if (cbyte+10>dglen) goto x_truncated;
  FUNC1(cbyte,tmp); *type_r= tmp;
  FUNC1(cbyte,tmp); *class_r= tmp;

  FUNC0(cbyte,ttl);
  if (ttl > MAXTTLBELIEVE) ttl= MAXTTLBELIEVE;
  *ttl_r= ttl;

  FUNC1(cbyte,rdlen); if (rdlen_r) *rdlen_r= rdlen;
  if (rdstart_r) *rdstart_r= cbyte;
  cbyte+= rdlen;
  if (cbyte>dglen) goto x_truncated;
  *cbyte_io= cbyte;
  return adns_s_ok;

 x_truncated:
  *type_r= -1;
  return 0;
}