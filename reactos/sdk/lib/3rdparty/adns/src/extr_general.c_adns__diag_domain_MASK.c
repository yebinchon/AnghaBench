#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ buf; scalar_t__ used; } ;
typedef  TYPE_1__ vbuf ;
typedef  int /*<<< orphan*/  byte ;
typedef  scalar_t__ adns_status ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_query ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ adns_s_nomemory ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  pdf_quoteok ; 

const char *FUNC4(adns_state ads, int serv, adns_query qu,
			      vbuf *vb, const byte *dgram, int dglen, int cbyte) {
  adns_status st;

  st= FUNC0(ads,serv,qu,vb, pdf_quoteok, dgram,dglen,&cbyte,dglen);
  if (st == adns_s_nomemory) {
    return "<cannot report domain... out of memory>";
  }
  if (st) {
    vb->used= 0;
    if (!(FUNC2(vb,"<bad format... ") &&
	  FUNC2(vb,FUNC3(st)) &&
	  FUNC2(vb,">") &&
	  FUNC1(vb,(byte*)"",1))) {
      return "<cannot report bad format... out of memory>";
    }
  }
  if (!vb->used) {
    FUNC2(vb,"<truncated ...>");
    FUNC1(vb,(byte*)"",1);
  }
  return (char*)vb->buf;
}