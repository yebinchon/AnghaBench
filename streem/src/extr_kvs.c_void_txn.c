
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_stream ;


 int STRM_NG ;
 int strm_raise (int *,char*) ;

__attribute__((used)) static int
void_txn(strm_stream* strm)
{
  strm_raise(strm, "invalid transaction");
  return STRM_NG;
}
