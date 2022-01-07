
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int magic_number; int version_major; int version_minor; int network; scalar_t__ snaplen; int sigfigs; int thiszone; } ;
typedef TYPE_1__ pcap_hdr_t ;
typedef int hdr ;
typedef int FILE ;


 int assert (int) ;
 int fflush_and_check (int *) ;
 int fwrite (TYPE_1__*,int,int,int *) ;
 int * stdout ;

int bus_pcap_header(size_t snaplen, FILE *f) {

        pcap_hdr_t hdr = {
                .magic_number = 0xa1b2c3d4U,
                .version_major = 2,
                .version_minor = 4,
                .thiszone = 0,
                .sigfigs = 0,
                .network = 231,
        };

        if (!f)
                f = stdout;

        assert(snaplen > 0);
        assert((size_t) (uint32_t) snaplen == snaplen);

        hdr.snaplen = (uint32_t) snaplen;

        fwrite(&hdr, 1, sizeof(hdr), f);

        return fflush_and_check(f);
}
