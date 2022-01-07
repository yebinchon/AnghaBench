
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t XHYVE_PAGE_SIZE ;
 int XHYVE_PROT_READ ;
 int XHYVE_PROT_WRITE ;
 int assert (int) ;
 int setup_memory_segment (int ,size_t,int,void**) ;

int
xh_setup_video_memory(uint64_t gpa, size_t len, void **addr)
{
    int error;

    assert(len % XHYVE_PAGE_SIZE == 0);


    error = setup_memory_segment(gpa, len, XHYVE_PROT_READ | XHYVE_PROT_WRITE, addr);

    return error;
}
