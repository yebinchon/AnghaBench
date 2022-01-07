
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int imagebase; TYPE_1__* ddirs; } ;
struct TYPE_3__ {scalar_t__ vaddr; unsigned int size; } ;


 size_t PEDIR_RELOC ;
 unsigned int get_le16 (void*) ;
 unsigned int get_le32 (void*) ;
 TYPE_2__ ih ;
 int print (char*,...) ;
 int set_le32 (void*,unsigned int) ;
 void* vaddr ;

__attribute__((used)) static int reloc(void)
{
    if (ih.ddirs[PEDIR_RELOC].vaddr == 0)
        return 0;
    void *relocs = vaddr + ih.ddirs[PEDIR_RELOC].vaddr;
    void *page = vaddr + get_le32(relocs);
    unsigned size = get_le32(relocs + 4);
    if (size != ih.ddirs[PEDIR_RELOC].size)
        return print("only 1 page can be relocated\n");
    unsigned num = (size - 8) / 2;
    while (num--)
    {
        unsigned pos = get_le16(relocs + 8 + num * 2);
        if (pos == 0)
            continue;
        if ((pos & 0xF000) != 0x3000)
            return print("unknown relocation type: %x\n", pos);

        void *r = page + (pos & 0xFFF);
        set_le32(r, get_le32(r) - ih.imagebase + (unsigned) vaddr);
    }
    return 0;
}
