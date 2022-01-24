#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  IpAddress; } ;
struct TYPE_7__ {TYPE_1__ A; } ;
struct TYPE_8__ {scalar_t__ wType; struct TYPE_8__* pNext; TYPE_2__ Data; } ;
typedef  TYPE_3__* PDNS_RECORD ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DNS_ERROR_INVALID_NAME ; 
 scalar_t__ DNS_ERROR_INVALID_NAME_CHAR ; 
 int /*<<< orphan*/  DNS_QUERY_STANDARD ; 
 scalar_t__ DNS_TYPE_A ; 
 int /*<<< orphan*/  DnsFreeRecordList ; 
 int /*<<< orphan*/  DnsNameDomain ; 
 int /*<<< orphan*/  DnsNameDomainLabel ; 
 scalar_t__ FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int) ; 

int FUNC6( int argc, char **argv ) {
  PDNS_RECORD QueryReply, AddrResponse;
  DWORD Addr;

  FUNC3 (FUNC2( "||||", DnsNameDomain ) == DNS_ERROR_INVALID_NAME_CHAR);
  FUNC3 (FUNC2( "a.b.c", DnsNameDomainLabel ) == DNS_ERROR_INVALID_NAME);
  FUNC3 (FUNC2( "1234", DnsNameDomainLabel ) == ERROR_SUCCESS);
  FUNC3 (FUNC2( "fubar", DnsNameDomain ) == ERROR_SUCCESS);
  FUNC3 (FUNC0 ("www.reactos.com", DNS_TYPE_A, DNS_QUERY_STANDARD,
		    NULL, &QueryReply, NULL) == ERROR_SUCCESS);
  AddrResponse = QueryReply;
  while( AddrResponse ) {
    if( AddrResponse->wType == DNS_TYPE_A ) {
      Addr = FUNC4( AddrResponse->Data.A.IpAddress );
      FUNC5( "www.reactos.com == %d.%d.%d.%d\n",
	      (int)(Addr >> 24) & 0xff,
	      (int)(Addr >> 16) & 0xff,
	      (int)(Addr >> 8) & 0xff,
	      (int)Addr & 0xff );
    }
    AddrResponse = AddrResponse->pNext;
  }
  FUNC1( QueryReply, DnsFreeRecordList );

  return 0;
}