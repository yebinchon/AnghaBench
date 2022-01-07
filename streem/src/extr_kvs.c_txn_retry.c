
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ serial; } ;
typedef TYPE_1__ strm_txn ;


 int STRM_NG ;

__attribute__((used)) static int
txn_retry(strm_txn* txn)
{
  txn->serial = 0;
  return STRM_NG;
}
