
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objects; int imagesize; } ;
struct TYPE_3__ {scalar_t__ vaddr; int vsize; int rawdataptr; } ;


 int MAP_ANONYMOUS ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int MEM_COMMIT ;
 int PAGE_EXECUTE_READWRITE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_SET ;
 scalar_t__ UPX_MMAP_ADDRESS ;
 scalar_t__ VirtualAlloc (int ,int ,int ,int ) ;
 unsigned int errno ;
 int f ;
 int fread (scalar_t__,int ,int,int ) ;
 scalar_t__ fseek (int ,int ,int ) ;
 TYPE_2__ ih ;
 TYPE_1__* isections ;
 scalar_t__ mmap (void*,int ,int,int,int,int ) ;
 int print (char*,...) ;
 scalar_t__ vaddr ;

__attribute__((used)) static int read(void)
{
    unsigned ic;

    vaddr = mmap((void *) UPX_MMAP_ADDRESS, ih.imagesize,
                 PROT_WRITE | PROT_READ | PROT_EXEC,
                 MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
    if (((int) vaddr) == -1)
        return print("mmap() failed: %d\n", errno);
    print("mmap for %p (size %x) successful\n", vaddr, ih.imagesize);






    for (ic = 1; ic <= (unsigned) ih.objects - 1; ic++)
        if (fseek(f, isections[ic].rawdataptr, SEEK_SET)
            || fread(vaddr + isections[ic].vaddr,
                     isections[ic].vsize, 1, f) != 1)
            return print("error reading section %u\n", ic);
    return 0;
}
