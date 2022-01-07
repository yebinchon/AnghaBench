
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct l_info {int dummy; } ;
typedef int mhdr ;
typedef int f_unfilter ;
typedef int f_expand ;
struct TYPE_8__ {int cmdsize; scalar_t__ cmd; } ;
struct TYPE_7__ {unsigned int ncmds; } ;
struct TYPE_6__ {scalar_t__ vmaddr; int * segname; } ;
typedef TYPE_1__ Mach_segment_command ;
typedef TYPE_2__ Mach_header ;
typedef TYPE_3__ Mach_command ;


 scalar_t__ LC_SEGMENT ;
 int munmap (char*,size_t) ;
 int upx_main (struct l_info const*,size_t,TYPE_2__*,int,int *,int *,TYPE_2__**) ;

int
main(int argc, char *argv[])
{

    asm("movl 1*4(%%ebp),%0; lea 2*4(%%ebp),%1" : "=r" (argc), "=r" (argv) : );

    Mach_header const *mhdr0 = (Mach_header const *)((~0ul<<12) & (unsigned long)&main);
    Mach_command const *ptr = (Mach_command const *)(1+ mhdr0);
    f_unfilter *f_unf;
    f_expand *f_exp;
    char *payload;
    size_t paysize;

    unsigned j;
    for (j=0; j < mhdr0->ncmds; ++j,
            ptr = (Mach_command const *)(ptr->cmdsize + (char const *)ptr))
    if (LC_SEGMENT==ptr->cmd) {
        Mach_segment_command const *const seg = (Mach_segment_command const *)ptr;

        if (*(uint64_t const *)(&"__LINKEDIT"[2]) == *(uint64_t const *)(&seg->segname[2])) {
            f_unf = (f_unfilter *)(sizeof(unsigned short) + seg->vmaddr);
            f_exp = (f_expand *)(*(unsigned short const *)seg->vmaddr + seg->vmaddr);
            unsigned const *q = (unsigned const *)seg->vmaddr;
            while (!(paysize = *--q)) ;
            payload = (char *)(-paysize + (char const *)q);
            break;
        }
    }
    char mhdr[16384];
    uint32_t entry = upx_main((struct l_info const *)payload, paysize,
        (Mach_header *)mhdr, sizeof(mhdr),
        f_exp, f_unf, (Mach_header **)&argv[-2]);

    munmap(payload, paysize);
    argv[-1] = (char *)(long)argc;
    asm("lea -2*4(%1),%%esp; jmp *%0" : : "r" (entry), "r" (argv));
    return 0;
}
