
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CTRepr ;
typedef int CTInfo ;


 int CTF_CONST ;
 int CTF_VOLATILE ;
 int ctype_preplit (int *,char*) ;

__attribute__((used)) static void ctype_prepqual(CTRepr *ctr, CTInfo info)
{
  if ((info & CTF_VOLATILE)) ctype_preplit(ctr, "volatile");
  if ((info & CTF_CONST)) ctype_preplit(ctr, "const");
}
