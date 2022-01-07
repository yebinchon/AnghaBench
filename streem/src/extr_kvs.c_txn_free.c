
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tv; } ;
typedef TYPE_1__ strm_txn ;


 int kh_destroy (TYPE_1__*,int *) ;

__attribute__((used)) static void
txn_free(strm_txn* txn)
{
  kh_destroy(txn, txn->tv);
  txn->tv = ((void*)0);
}
