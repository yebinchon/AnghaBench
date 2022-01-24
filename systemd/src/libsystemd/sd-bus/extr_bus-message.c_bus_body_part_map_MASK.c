#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct bus_body_part {int size; scalar_t__ memfd; size_t memfd_offset; size_t mapped; int munmap_this; int /*<<< orphan*/ * data; void* mmap_begin; scalar_t__ is_zero; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC1 (struct bus_body_part*) ; 
 int errno ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,int,size_t) ; 
 size_t FUNC3 () ; 

int FUNC4(struct bus_body_part *part) {
        void *p;
        size_t psz, shift;

        FUNC1(part);

        if (part->data)
                return 0;

        if (part->size <= 0)
                return 0;

        /* For smaller zero parts (as used for padding) we don't need to map anything... */
        if (part->memfd < 0 && part->is_zero && part->size < 8) {
                static const uint8_t zeroes[7] = { };
                part->data = (void*) zeroes;
                return 0;
        }

        shift = part->memfd_offset - ((part->memfd_offset / FUNC3()) * FUNC3());
        psz = FUNC0(part->size + shift);

        if (part->memfd >= 0)
                p = FUNC2(NULL, psz, PROT_READ, MAP_PRIVATE, part->memfd, part->memfd_offset - shift);
        else if (part->is_zero)
                p = FUNC2(NULL, psz, PROT_READ, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
        else
                return -EINVAL;

        if (p == MAP_FAILED)
                return -errno;

        part->mapped = psz;
        part->mmap_begin = p;
        part->data = (uint8_t*) p + shift;
        part->munmap_this = true;

        return 0;
}