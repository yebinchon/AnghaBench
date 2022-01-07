
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p_type; unsigned int p_flags; size_t p_vaddr; size_t p_filesz; size_t p_memsz; } ;
typedef TYPE_1__ Elf32_Phdr ;
typedef int Elf32_Addr ;


 int DPRINTF (int ) ;
 unsigned int const ET_EXEC ;
 int MAP_ANONYMOUS ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 unsigned int PAGE_MASK ;
 unsigned int PF_X ;
 int PROT_NONE ;
 scalar_t__ PT_LOAD ;
 int STR_xfind_pages () ;
 int mflags ;
 char* mmap (void*,size_t,int ,int,int,int ) ;
 int p_brk ;
 int umax (int,int) ;

__attribute__((used)) static unsigned long



xfind_pages(unsigned const e_type, Elf32_Phdr const *phdr, int phnum,
    Elf32_Addr old_hi[2])
{
    size_t sz[2]= { 0u, 0u};
    size_t hi[2]= { 0u, 0u};
    size_t lo[2]= {~0u, ~0u};
    char *addr[2];
    unsigned level= 0;
    int j;

    DPRINTF((STR_xfind_pages(), mflags, phdr, phnum, p_brk));
    for (; --phnum>=0; ++phdr) if (PT_LOAD==phdr->p_type) {
        unsigned const td = PF_X & phdr->p_flags;
        if (lo[td] > phdr->p_vaddr) {
            lo[td] = phdr->p_vaddr;
            sz[td] = phdr->p_filesz;
        }
        if (hi[td] < (phdr->p_memsz + phdr->p_vaddr)) {
            hi[td] = phdr->p_memsz + phdr->p_vaddr;
        }
    }
    if ((ET_EXEC!=e_type) && 0x20000000u<=hi[0]) {
        level= (0xfc000000u & old_hi[1]) +
            umax(0x03ffffffu & old_hi[1],
                 0x03ffffffu & old_hi[0] );
        level= PAGE_MASK & (level - PAGE_MASK -1);
    }
    for (j=0; j<=1; ++j) {
        sz[j] += ~PAGE_MASK & lo[j];
        lo[j] -= ~PAGE_MASK & lo[j];
        old_hi[j] = level + hi[j];
        hi[j] = PAGE_MASK & (hi[j] - lo[j] - PAGE_MASK -1);
        sz[j] = PAGE_MASK & (sz[j] - PAGE_MASK -1);
        addr[j] = mmap((void *)(level + lo[j]), hi[j], PROT_NONE,
            MAP_FIXED | MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    }
    return (unsigned long)addr[0] - lo[0];
}
