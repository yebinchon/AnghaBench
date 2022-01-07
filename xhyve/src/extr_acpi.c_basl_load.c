
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; } ;


 int EFAULT ;
 scalar_t__ basl_acpi_base ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 void* paddr_guest2host (scalar_t__,size_t) ;
 scalar_t__ read (int,void*,size_t) ;

__attribute__((used)) static int
basl_load(int fd, uint64_t off)
{
 struct stat sb;
 void *gaddr;

 if (fstat(fd, &sb) < 0)
  return (errno);

 gaddr = paddr_guest2host(basl_acpi_base + off, ((size_t) sb.st_size));
 if (gaddr == ((void*)0))
  return (EFAULT);

 if (read(fd, gaddr, ((size_t) sb.st_size)) < 0)
  return (errno);

 return (0);
}
