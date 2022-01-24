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
struct TYPE_3__ {int /*<<< orphan*/  qu; int /*<<< orphan*/ * dgram; } ;
typedef  TYPE_1__ parseinfo ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  adns_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  R_NOMEM ; 
 char* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  adns_s_invaliddata ; 
 int /*<<< orphan*/  adns_s_ok ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static adns_status FUNC3(const parseinfo *pai, int *cbyte_io, int max,
			      int *len_r, char **str_r) {
  /* Neither len_r nor str_r may be null.
   * End of datagram (overrun) is indicated by returning adns_s_invaliddata;
   */
  const byte *dgram= pai->dgram;
  int l, cbyte;
  char *str;

  cbyte= *cbyte_io;

  if (cbyte >= max) return adns_s_invaliddata;
  FUNC0(cbyte,l);
  if (cbyte+l > max) return adns_s_invaliddata;

  str= FUNC1(pai->qu, (size_t)l+1);
  if (!str) R_NOMEM;

  str[l]= 0;
  FUNC2(str,dgram+cbyte,(size_t)l);

  *len_r= l;
  *str_r= str;
  *cbyte_io= cbyte+l;

  return adns_s_ok;
}