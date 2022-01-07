
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_21__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_16__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_39__ {int key; } ;
struct TYPE_38__ {int fingerprint; } ;
struct TYPE_37__ {int digest; } ;
struct TYPE_36__ {int exchange; } ;
struct TYPE_35__ {int rname; int mname; } ;
struct TYPE_34__ {int items; } ;
struct TYPE_33__ {int os; int cpu; } ;
struct TYPE_32__ {int name; } ;
struct TYPE_31__ {int type; } ;
struct TYPE_30__ {int name; } ;
struct TYPE_28__ {int data; } ;
struct TYPE_27__ {int value; int tag; } ;
struct TYPE_26__ {int data; } ;
struct TYPE_25__ {int types; int salt; int next_hashed_name; } ;
struct TYPE_24__ {int types; int next_domain_name; } ;
struct TYPE_23__ {int signature; int signer; } ;
struct TYPE_29__ {int to_string; TYPE_21__* key; int wire_format; TYPE_15__ generic; scalar_t__ unparseable; TYPE_14__ caa; TYPE_13__ tlsa; TYPE_12__ nsec3; TYPE_11__ nsec; TYPE_10__ rrsig; TYPE_9__ dnskey; TYPE_8__ sshfp; TYPE_7__ ds; TYPE_6__ mx; TYPE_5__ soa; TYPE_4__ txt; TYPE_3__ hinfo; TYPE_2__ ptr; TYPE_1__ srv; } ;
typedef TYPE_16__ DnsResourceRecord ;
 int assert (TYPE_16__*) ;
 int bitmap_free (int ) ;
 int dns_resource_key_unref (TYPE_21__*) ;
 int dns_txt_item_free_all (int ) ;
 int free (int ) ;
 TYPE_16__* mfree (TYPE_16__*) ;

__attribute__((used)) static DnsResourceRecord* dns_resource_record_free(DnsResourceRecord *rr) {
        assert(rr);

        if (rr->key) {
                switch(rr->key->type) {

                case 131:
                        free(rr->srv.name);
                        break;

                case 135:
                case 139:
                case 146:
                case 145:
                        free(rr->ptr.name);
                        break;

                case 142:
                        free(rr->hinfo.cpu);
                        free(rr->hinfo.os);
                        break;

                case 128:
                case 132:
                        dns_txt_item_free_all(rr->txt.items);
                        break;

                case 133:
                        free(rr->soa.mname);
                        free(rr->soa.rname);
                        break;

                case 140:
                        free(rr->mx.exchange);
                        break;

                case 143:
                        free(rr->ds.digest);
                        break;

                case 130:
                        free(rr->sshfp.fingerprint);
                        break;

                case 144:
                        free(rr->dnskey.key);
                        break;

                case 134:
                        free(rr->rrsig.signer);
                        free(rr->rrsig.signature);
                        break;

                case 138:
                        free(rr->nsec.next_domain_name);
                        bitmap_free(rr->nsec.types);
                        break;

                case 137:
                        free(rr->nsec3.next_hashed_name);
                        free(rr->nsec3.salt);
                        bitmap_free(rr->nsec3.types);
                        break;

                case 141:
                case 149:
                case 148:
                        break;

                case 129:
                        free(rr->tlsa.data);
                        break;

                case 147:
                        free(rr->caa.tag);
                        free(rr->caa.value);
                        break;

                case 136:
                default:
                        if (!rr->unparseable)
                                free(rr->generic.data);
                }

                if (rr->unparseable)
                        free(rr->generic.data);

                free(rr->wire_format);
                dns_resource_key_unref(rr->key);
        }

        free(rr->to_string);
        return mfree(rr);
}
