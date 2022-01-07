
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int strm_value ;


 int FALSE ;


 int TRUE ;
 int assert (int) ;
 int const strm_value_tag (int ) ;
 scalar_t__ strm_value_val (int ) ;

int
strm_value_bool(strm_value v)
{
  uint64_t i = strm_value_val(v);

  if (i == 0) {
    switch (strm_value_tag(v)) {
    case 129:
    case 128:
      break;
    default:
      assert(strm_value_tag(v) == 129);
      break;
    }
    return FALSE;
  }
  else {
    return TRUE;
  }
}
