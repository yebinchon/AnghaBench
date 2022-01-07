
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 size_t XHYVE_PAGE_SIZE ;
 int XHYVE_PROT_EXECUTE ;
 int XHYVE_PROT_READ ;
 int assert (int) ;
 int setup_memory_segment (unsigned long long,size_t,int,void**) ;

int
xh_setup_bootrom_memory(size_t len, void **addr)
{
    int error;

    assert(len % XHYVE_PAGE_SIZE == 0);


    uint64_t gpa = (4ull << 30) - len;
    error = setup_memory_segment(gpa, len, XHYVE_PROT_READ | XHYVE_PROT_EXECUTE, addr);

    return error;
}
