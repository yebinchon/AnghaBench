
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p_type; size_t p_vaddr; size_t p_filesz; size_t p_memsz; } ;
typedef TYPE_1__ Elf32_Phdr ;


 int DPRINTF (int ) ;
 unsigned int MAP_ANONYMOUS ;
 int MAP_ANON_FD ;
 unsigned int MAP_PRIVATE ;
 size_t PAGE_MASK ;
 int PROT_NONE ;
 scalar_t__ PT_LOAD ;
 int STR_xfind_pages () ;
 char* mmap (void*,size_t,int ,unsigned int,int ,int ) ;

__attribute__((used)) static unsigned long



xfind_pages(unsigned mflags, Elf32_Phdr const *phdr, int phnum,
    char **const p_brk
)
{
    size_t lo= ~0, hi= 0, szlo= 0;
    char *addr;
    DPRINTF((STR_xfind_pages(), mflags, phdr, phnum, p_brk));
    mflags += MAP_PRIVATE | MAP_ANONYMOUS;
    for (; --phnum>=0; ++phdr) if (PT_LOAD==phdr->p_type) {
        if (phdr->p_vaddr < lo) {
            lo = phdr->p_vaddr;
            szlo = phdr->p_filesz;
        }
        if (hi < (phdr->p_memsz + phdr->p_vaddr)) {
            hi = phdr->p_memsz + phdr->p_vaddr;
        }
    }
    szlo += ~PAGE_MASK & lo;
    lo -= ~PAGE_MASK & lo;
    hi = PAGE_MASK & (hi - lo - PAGE_MASK -1);
    szlo = PAGE_MASK & (szlo - PAGE_MASK -1);
    addr = mmap((void *)lo, hi, PROT_NONE, mflags, MAP_ANON_FD, 0);
    *p_brk = hi + addr;

    return (unsigned long)addr - lo;
}
