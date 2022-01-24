#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_9__ ;
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_21__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_16__ ;
typedef  struct TYPE_28__   TYPE_15__ ;
typedef  struct TYPE_27__   TYPE_14__ ;
typedef  struct TYPE_26__   TYPE_13__ ;
typedef  struct TYPE_25__   TYPE_12__ ;
typedef  struct TYPE_24__   TYPE_11__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
struct TYPE_39__ {int /*<<< orphan*/  key; } ;
struct TYPE_38__ {int /*<<< orphan*/  fingerprint; } ;
struct TYPE_37__ {int /*<<< orphan*/  digest; } ;
struct TYPE_36__ {int /*<<< orphan*/  exchange; } ;
struct TYPE_35__ {int /*<<< orphan*/  rname; int /*<<< orphan*/  mname; } ;
struct TYPE_34__ {int /*<<< orphan*/  items; } ;
struct TYPE_33__ {int /*<<< orphan*/  os; int /*<<< orphan*/  cpu; } ;
struct TYPE_32__ {int /*<<< orphan*/  name; } ;
struct TYPE_31__ {int type; } ;
struct TYPE_30__ {int /*<<< orphan*/  name; } ;
struct TYPE_28__ {int /*<<< orphan*/  data; } ;
struct TYPE_27__ {int /*<<< orphan*/  value; int /*<<< orphan*/  tag; } ;
struct TYPE_26__ {int /*<<< orphan*/  data; } ;
struct TYPE_25__ {int /*<<< orphan*/  types; int /*<<< orphan*/  salt; int /*<<< orphan*/  next_hashed_name; } ;
struct TYPE_24__ {int /*<<< orphan*/  types; int /*<<< orphan*/  next_domain_name; } ;
struct TYPE_23__ {int /*<<< orphan*/  signature; int /*<<< orphan*/  signer; } ;
struct TYPE_29__ {int /*<<< orphan*/  to_string; TYPE_21__* key; int /*<<< orphan*/  wire_format; TYPE_15__ generic; scalar_t__ unparseable; TYPE_14__ caa; TYPE_13__ tlsa; TYPE_12__ nsec3; TYPE_11__ nsec; TYPE_10__ rrsig; TYPE_9__ dnskey; TYPE_8__ sshfp; TYPE_7__ ds; TYPE_6__ mx; TYPE_5__ soa; TYPE_4__ txt; TYPE_3__ hinfo; TYPE_2__ ptr; TYPE_1__ srv; } ;
typedef  TYPE_16__ DnsResourceRecord ;

/* Variables and functions */
#define  DNS_TYPE_A 149 
#define  DNS_TYPE_AAAA 148 
#define  DNS_TYPE_CAA 147 
#define  DNS_TYPE_CNAME 146 
#define  DNS_TYPE_DNAME 145 
#define  DNS_TYPE_DNSKEY 144 
#define  DNS_TYPE_DS 143 
#define  DNS_TYPE_HINFO 142 
#define  DNS_TYPE_LOC 141 
#define  DNS_TYPE_MX 140 
#define  DNS_TYPE_NS 139 
#define  DNS_TYPE_NSEC 138 
#define  DNS_TYPE_NSEC3 137 
#define  DNS_TYPE_OPENPGPKEY 136 
#define  DNS_TYPE_PTR 135 
#define  DNS_TYPE_RRSIG 134 
#define  DNS_TYPE_SOA 133 
#define  DNS_TYPE_SPF 132 
#define  DNS_TYPE_SRV 131 
#define  DNS_TYPE_SSHFP 130 
#define  DNS_TYPE_TLSA 129 
#define  DNS_TYPE_TXT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_16__* FUNC5 (TYPE_16__*) ; 

__attribute__((used)) static DnsResourceRecord* FUNC6(DnsResourceRecord *rr) {
        FUNC0(rr);

        if (rr->key) {
                switch(rr->key->type) {

                case DNS_TYPE_SRV:
                        FUNC4(rr->srv.name);
                        break;

                case DNS_TYPE_PTR:
                case DNS_TYPE_NS:
                case DNS_TYPE_CNAME:
                case DNS_TYPE_DNAME:
                        FUNC4(rr->ptr.name);
                        break;

                case DNS_TYPE_HINFO:
                        FUNC4(rr->hinfo.cpu);
                        FUNC4(rr->hinfo.os);
                        break;

                case DNS_TYPE_TXT:
                case DNS_TYPE_SPF:
                        FUNC3(rr->txt.items);
                        break;

                case DNS_TYPE_SOA:
                        FUNC4(rr->soa.mname);
                        FUNC4(rr->soa.rname);
                        break;

                case DNS_TYPE_MX:
                        FUNC4(rr->mx.exchange);
                        break;

                case DNS_TYPE_DS:
                        FUNC4(rr->ds.digest);
                        break;

                case DNS_TYPE_SSHFP:
                        FUNC4(rr->sshfp.fingerprint);
                        break;

                case DNS_TYPE_DNSKEY:
                        FUNC4(rr->dnskey.key);
                        break;

                case DNS_TYPE_RRSIG:
                        FUNC4(rr->rrsig.signer);
                        FUNC4(rr->rrsig.signature);
                        break;

                case DNS_TYPE_NSEC:
                        FUNC4(rr->nsec.next_domain_name);
                        FUNC1(rr->nsec.types);
                        break;

                case DNS_TYPE_NSEC3:
                        FUNC4(rr->nsec3.next_hashed_name);
                        FUNC4(rr->nsec3.salt);
                        FUNC1(rr->nsec3.types);
                        break;

                case DNS_TYPE_LOC:
                case DNS_TYPE_A:
                case DNS_TYPE_AAAA:
                        break;

                case DNS_TYPE_TLSA:
                        FUNC4(rr->tlsa.data);
                        break;

                case DNS_TYPE_CAA:
                        FUNC4(rr->caa.tag);
                        FUNC4(rr->caa.value);
                        break;

                case DNS_TYPE_OPENPGPKEY:
                default:
                        if (!rr->unparseable)
                                FUNC4(rr->generic.data);
                }

                if (rr->unparseable)
                        FUNC4(rr->generic.data);

                FUNC4(rr->wire_format);
                FUNC2(rr->key);
        }

        FUNC4(rr->to_string);
        return FUNC5(rr);
}