
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int FILE ;
typedef unsigned int DnsServer ;
typedef int DnsScope ;


 unsigned int MAXNS ;
 int assert (unsigned int*) ;
 int dns_scope_is_default_route (int *) ;
 int * dns_server_scope (unsigned int*) ;
 char* dns_server_string (unsigned int*) ;
 int fprintf (unsigned int*,char*,char*) ;
 int fputs (char*,unsigned int*) ;
 int log_debug (char*,char*) ;
 int log_warning (char*) ;

__attribute__((used)) static void write_resolv_conf_server(DnsServer *s, FILE *f, unsigned *count) {
        DnsScope *scope;

        assert(s);
        assert(f);
        assert(count);

        if (!dns_server_string(s)) {
                log_warning("Out of memory, or invalid DNS address. Ignoring server.");
                return;
        }




        scope = dns_server_scope(s);
        if (scope && !dns_scope_is_default_route(scope)) {
                log_debug("Scope of DNS server %s has only route-only domains, not using as global name server", dns_server_string(s));
                return;
        }

        if (*count == MAXNS)
                fputs("# Too many DNS servers configured, the following entries may be ignored.\n", f);
        (*count)++;

        fprintf(f, "nameserver %s\n", dns_server_string(s));
}
