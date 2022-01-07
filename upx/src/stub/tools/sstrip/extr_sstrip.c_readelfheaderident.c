
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* e_ident; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_MAG0 ;
 size_t EI_MAG1 ;
 size_t EI_MAG2 ;
 size_t EI_MAG3 ;
 scalar_t__ EI_NIDENT ;
 scalar_t__ ELFDATA2LSB ;
 scalar_t__ ELFDATA2MSB ;
 scalar_t__ ELFMAG0 ;
 scalar_t__ ELFMAG1 ;
 scalar_t__ ELFMAG2 ;
 scalar_t__ ELFMAG3 ;
 int do_reverse_endian ;
 int err (char*) ;
 scalar_t__ errno ;
 int ferr (char*) ;
 scalar_t__ read (int,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int readelfheaderident(int fd, Elf32_Ehdr *ehdr)
{
    errno = 0;
    if (read(fd, ehdr, EI_NIDENT) != EI_NIDENT)
        return ferr("missing or incomplete ELF header.");



    if (!(ehdr->e_ident[EI_MAG0] == ELFMAG0 &&
          ehdr->e_ident[EI_MAG1] == ELFMAG1 &&
          ehdr->e_ident[EI_MAG2] == ELFMAG2 &&
          ehdr->e_ident[EI_MAG3] == ELFMAG3))
    {
        err("missing ELF signature.");
        return -1;
    }




    if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB) {
        do_reverse_endian = 0;
    } else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB) {

        do_reverse_endian = 1;
    }
    else {
        err("Unsupported endianness");
        return -1;
    }







    return ehdr->e_ident[EI_CLASS];
}
