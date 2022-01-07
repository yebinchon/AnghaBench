
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bus_body_part {int size; scalar_t__ memfd; size_t memfd_offset; size_t mapped; int munmap_this; int * data; void* mmap_begin; scalar_t__ is_zero; } ;


 int EINVAL ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 size_t PAGE_ALIGN (size_t) ;
 int PROT_READ ;
 int assert_se (struct bus_body_part*) ;
 int errno ;
 void* mmap (int *,size_t,int ,int,int,size_t) ;
 size_t page_size () ;

int bus_body_part_map(struct bus_body_part *part) {
        void *p;
        size_t psz, shift;

        assert_se(part);

        if (part->data)
                return 0;

        if (part->size <= 0)
                return 0;


        if (part->memfd < 0 && part->is_zero && part->size < 8) {
                static const uint8_t zeroes[7] = { };
                part->data = (void*) zeroes;
                return 0;
        }

        shift = part->memfd_offset - ((part->memfd_offset / page_size()) * page_size());
        psz = PAGE_ALIGN(part->size + shift);

        if (part->memfd >= 0)
                p = mmap(((void*)0), psz, PROT_READ, MAP_PRIVATE, part->memfd, part->memfd_offset - shift);
        else if (part->is_zero)
                p = mmap(((void*)0), psz, PROT_READ, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
        else
                return -EINVAL;

        if (p == MAP_FAILED)
                return -errno;

        part->mapped = psz;
        part->mmap_begin = p;
        part->data = (uint8_t*) p + shift;
        part->munmap_this = 1;

        return 0;
}
