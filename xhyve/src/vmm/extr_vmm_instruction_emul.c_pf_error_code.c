
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PGEX_I ;
 int PGEX_P ;
 int PGEX_RSV ;
 int PGEX_U ;
 int PGEX_W ;
 int PG_V ;
 int XHYVE_PROT_EXECUTE ;
 int XHYVE_PROT_WRITE ;

__attribute__((used)) static int
pf_error_code(int usermode, int prot, int rsvd, uint64_t pte)
{
 int error_code = 0;

 if (pte & PG_V)
  error_code |= PGEX_P;
 if (prot & XHYVE_PROT_WRITE)
  error_code |= PGEX_W;
 if (usermode)
  error_code |= PGEX_U;
 if (rsvd)
  error_code |= PGEX_RSV;
 if (prot & XHYVE_PROT_EXECUTE)
  error_code |= PGEX_I;

 return (error_code);
}
