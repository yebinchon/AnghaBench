
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int to_str (int *,int ,char*) ;

__attribute__((used)) static int
txn_str(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  if (argc != 1) return STRM_NG;
  *ret = to_str(strm, args[0], "txn");
  return STRM_OK;
}
