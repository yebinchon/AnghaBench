
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_value ;
struct TYPE_3__ {int tv; } ;
typedef TYPE_1__ strm_txn ;


 int STRM_PTR_AUX ;
 scalar_t__ strm_value_ptr (int ,int ) ;

__attribute__((used)) static strm_txn*
get_txn(int argc, strm_value* args)
{
  strm_txn* txn;

  if (argc == 0) return ((void*)0);
  txn = (strm_txn*)strm_value_ptr(args[0], STRM_PTR_AUX);
  if (!txn->tv) {
    return ((void*)0);
  }
  return txn;
}
