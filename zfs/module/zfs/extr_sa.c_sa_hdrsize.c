
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_hdr_phys_t ;


 int SA_HDR_SIZE (int *) ;

int
sa_hdrsize(void *arg)
{
 sa_hdr_phys_t *hdr = arg;

 return (SA_HDR_SIZE(hdr));
}
