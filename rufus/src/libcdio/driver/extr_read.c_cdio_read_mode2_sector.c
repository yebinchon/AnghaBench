
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsn_t ;
typedef int driver_return_code_t ;
struct TYPE_5__ {int * read_mode2_sectors; int (* read_mode2_sector ) (int ,void*,int ,int) ;} ;
struct TYPE_6__ {TYPE_1__ op; int env; } ;
typedef TYPE_2__ CdIo_t ;


 int DRIVER_OP_UNSUPPORTED ;
 int cdio_read_mode2_sectors (TYPE_2__ const*,void*,int ,int,int) ;
 int check_lsn (int ) ;
 int stub1 (int ,void*,int ,int) ;

driver_return_code_t
cdio_read_mode2_sector (const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn,
                        bool b_form2)
{
  check_lsn(i_lsn);
  if (p_cdio->op.read_mode2_sector)
    return p_cdio->op.read_mode2_sector (p_cdio->env, p_buf, i_lsn, b_form2);


  if (p_cdio->op.read_mode2_sectors != ((void*)0))
    return cdio_read_mode2_sectors (p_cdio, p_buf, i_lsn, b_form2, 1);
  return DRIVER_OP_UNSUPPORTED;
}
