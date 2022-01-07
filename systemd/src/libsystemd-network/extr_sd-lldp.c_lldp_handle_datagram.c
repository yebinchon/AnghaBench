
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_lldp_neighbor ;
typedef int sd_lldp ;


 int EBADMSG ;
 int assert (int *) ;
 int lldp_add_neighbor (int *,int *) ;
 int lldp_neighbor_parse (int *) ;
 int log_lldp (char*) ;
 int log_lldp_errno (int,char*) ;

__attribute__((used)) static int lldp_handle_datagram(sd_lldp *lldp, sd_lldp_neighbor *n) {
        int r;

        assert(lldp);
        assert(n);

        r = lldp_neighbor_parse(n);
        if (r == -EBADMSG)
                return 0;
        if (r < 0)
                return r;

        r = lldp_add_neighbor(lldp, n);
        if (r < 0) {
                log_lldp_errno(r, "Failed to add datagram. Ignoring.");
                return 0;
        }

        log_lldp("Successfully processed LLDP datagram.");
        return 0;
}
