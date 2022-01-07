
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lrc_txtype; } ;
struct TYPE_6__ {int itx_size; int itx_callback_data; int (* itx_callback ) (int ) ;TYPE_1__ itx_lr; } ;
typedef TYPE_2__ itx_t ;


 int IMPLY (int,int) ;
 scalar_t__ TX_COMMIT ;
 int stub1 (int ) ;
 int zio_data_buf_free (TYPE_2__*,int ) ;

void
zil_itx_destroy(itx_t *itx)
{
 IMPLY(itx->itx_lr.lrc_txtype == TX_COMMIT, itx->itx_callback == ((void*)0));
 IMPLY(itx->itx_callback != ((void*)0), itx->itx_lr.lrc_txtype != TX_COMMIT);

 if (itx->itx_callback != ((void*)0))
  itx->itx_callback(itx->itx_callback_data);

 zio_data_buf_free(itx, itx->itx_size);
}
