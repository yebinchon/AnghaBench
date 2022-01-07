
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsTrustAnchor ;


 int assert (int *) ;
 int dns_trust_anchor_add_builtin_negative (int *) ;
 int dns_trust_anchor_add_builtin_positive (int *) ;
 int dns_trust_anchor_dump (int *) ;
 int dns_trust_anchor_load_files (int *,char*,int ) ;
 int dns_trust_anchor_load_negative ;
 int dns_trust_anchor_load_positive ;
 int log_error_errno (int,char*) ;

int dns_trust_anchor_load(DnsTrustAnchor *d) {
        int r;

        assert(d);


        (void) dns_trust_anchor_load_files(d, ".positive", dns_trust_anchor_load_positive);
        (void) dns_trust_anchor_load_files(d, ".negative", dns_trust_anchor_load_negative);


        r = dns_trust_anchor_add_builtin_positive(d);
        if (r < 0)
                return log_error_errno(r, "Failed to add built-in positive trust anchor: %m");

        r = dns_trust_anchor_add_builtin_negative(d);
        if (r < 0)
                return log_error_errno(r, "Failed to add built-in negative trust anchor: %m");

        dns_trust_anchor_dump(d);

        return 0;
}
