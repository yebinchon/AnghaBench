
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_29__ {int os; int cpu; } ;
struct TYPE_28__ {int name; } ;
struct TYPE_27__ {int port; int weight; int priority; int name; } ;
struct TYPE_26__ {int type; } ;
struct TYPE_25__ {int types; int next_domain_name; } ;
struct TYPE_24__ {int altitude; int longitude; int latitude; int vert_pre; int horiz_pre; int size; int version; } ;
struct TYPE_23__ {int exchange; int priority; } ;
struct TYPE_22__ {int minimum; int expire; int retry; int refresh; int serial; int rname; int mname; } ;
struct TYPE_21__ {int in6_addr; } ;
struct TYPE_20__ {int tag; int flags; int matching_type; int selector; int cert_usage; int types; int iterations; int algorithm; int signer; int key_tag; int inception; int expiration; int original_ttl; int labels; int type_covered; int protocol; int fptype; int digest_type; } ;
struct TYPE_18__ {int in_addr; } ;
struct TYPE_17__ {int items; } ;
struct TYPE_19__ {scalar_t__ unparseable; TYPE_15__ generic; TYPE_15__ caa; TYPE_15__ tlsa; TYPE_15__ nsec3; TYPE_5__ nsec; TYPE_15__ rrsig; TYPE_15__ dnskey; TYPE_15__ sshfp; TYPE_15__ ds; TYPE_4__ loc; TYPE_3__ mx; TYPE_2__ soa; TYPE_1__ aaaa; TYPE_11__ a; TYPE_10__ txt; TYPE_9__ hinfo; TYPE_8__ ptr; TYPE_7__ srv; TYPE_6__* key; } ;
typedef TYPE_12__ DnsResourceRecord ;
 int FIELD_EQUAL (TYPE_15__,TYPE_15__,int ) ;
 int _DNS_TYPE_INVALID ;
 int assert (int) ;
 int bitmap_equal (int ,int ) ;
 int data ;
 int digest ;
 int dns_name_equal (int ,int ) ;
 int dns_txt_item_equal (int ,int ) ;
 int fingerprint ;
 int key ;
 int memcmp (int *,int *,int) ;
 int next_hashed_name ;
 int salt ;
 int signature ;
 int strcaseeq (int ,int ) ;
 int streq (int ,int ) ;
 int value ;

int dns_resource_record_payload_equal(const DnsResourceRecord *a, const DnsResourceRecord *b) {
        int r;



        if (a->unparseable != b->unparseable)
                return 0;

        switch (a->unparseable ? _DNS_TYPE_INVALID : a->key->type) {

        case 131:
                r = dns_name_equal(a->srv.name, b->srv.name);
                if (r <= 0)
                        return r;

                return a->srv.priority == b->srv.priority &&
                       a->srv.weight == b->srv.weight &&
                       a->srv.port == b->srv.port;

        case 135:
        case 139:
        case 146:
        case 145:
                return dns_name_equal(a->ptr.name, b->ptr.name);

        case 142:
                return strcaseeq(a->hinfo.cpu, b->hinfo.cpu) &&
                       strcaseeq(a->hinfo.os, b->hinfo.os);

        case 132:
        case 128:
                return dns_txt_item_equal(a->txt.items, b->txt.items);

        case 149:
                return memcmp(&a->a.in_addr, &b->a.in_addr, sizeof(struct in_addr)) == 0;

        case 148:
                return memcmp(&a->aaaa.in6_addr, &b->aaaa.in6_addr, sizeof(struct in6_addr)) == 0;

        case 133:
                r = dns_name_equal(a->soa.mname, b->soa.mname);
                if (r <= 0)
                        return r;
                r = dns_name_equal(a->soa.rname, b->soa.rname);
                if (r <= 0)
                        return r;

                return a->soa.serial == b->soa.serial &&
                       a->soa.refresh == b->soa.refresh &&
                       a->soa.retry == b->soa.retry &&
                       a->soa.expire == b->soa.expire &&
                       a->soa.minimum == b->soa.minimum;

        case 140:
                if (a->mx.priority != b->mx.priority)
                        return 0;

                return dns_name_equal(a->mx.exchange, b->mx.exchange);

        case 141:
                assert(a->loc.version == b->loc.version);

                return a->loc.size == b->loc.size &&
                       a->loc.horiz_pre == b->loc.horiz_pre &&
                       a->loc.vert_pre == b->loc.vert_pre &&
                       a->loc.latitude == b->loc.latitude &&
                       a->loc.longitude == b->loc.longitude &&
                       a->loc.altitude == b->loc.altitude;

        case 143:
                return a->ds.key_tag == b->ds.key_tag &&
                       a->ds.algorithm == b->ds.algorithm &&
                       a->ds.digest_type == b->ds.digest_type &&
                       FIELD_EQUAL(a->ds, b->ds, digest);

        case 130:
                return a->sshfp.algorithm == b->sshfp.algorithm &&
                       a->sshfp.fptype == b->sshfp.fptype &&
                       FIELD_EQUAL(a->sshfp, b->sshfp, fingerprint);

        case 144:
                return a->dnskey.flags == b->dnskey.flags &&
                       a->dnskey.protocol == b->dnskey.protocol &&
                       a->dnskey.algorithm == b->dnskey.algorithm &&
                       FIELD_EQUAL(a->dnskey, b->dnskey, key);

        case 134:

                return a->rrsig.type_covered == b->rrsig.type_covered &&
                       a->rrsig.algorithm == b->rrsig.algorithm &&
                       a->rrsig.labels == b->rrsig.labels &&
                       a->rrsig.original_ttl == b->rrsig.original_ttl &&
                       a->rrsig.expiration == b->rrsig.expiration &&
                       a->rrsig.inception == b->rrsig.inception &&
                       a->rrsig.key_tag == b->rrsig.key_tag &&
                       FIELD_EQUAL(a->rrsig, b->rrsig, signature) &&
                       dns_name_equal(a->rrsig.signer, b->rrsig.signer);

        case 138:
                return dns_name_equal(a->nsec.next_domain_name, b->nsec.next_domain_name) &&
                       bitmap_equal(a->nsec.types, b->nsec.types);

        case 137:
                return a->nsec3.algorithm == b->nsec3.algorithm &&
                       a->nsec3.flags == b->nsec3.flags &&
                       a->nsec3.iterations == b->nsec3.iterations &&
                       FIELD_EQUAL(a->nsec3, b->nsec3, salt) &&
                       FIELD_EQUAL(a->nsec3, b->nsec3, next_hashed_name) &&
                       bitmap_equal(a->nsec3.types, b->nsec3.types);

        case 129:
                return a->tlsa.cert_usage == b->tlsa.cert_usage &&
                       a->tlsa.selector == b->tlsa.selector &&
                       a->tlsa.matching_type == b->tlsa.matching_type &&
                       FIELD_EQUAL(a->tlsa, b->tlsa, data);

        case 147:
                return a->caa.flags == b->caa.flags &&
                       streq(a->caa.tag, b->caa.tag) &&
                       FIELD_EQUAL(a->caa, b->caa, value);

        case 136:
        default:
                return FIELD_EQUAL(a->generic, b->generic, data);
        }
}
