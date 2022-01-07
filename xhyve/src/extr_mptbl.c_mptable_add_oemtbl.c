
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oem_tbl_size ;
 void* oem_tbl_start ;

void
mptable_add_oemtbl(void *tbl, int tblsz)
{

 oem_tbl_start = tbl;
 oem_tbl_size = tblsz;
}
