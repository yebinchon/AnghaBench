
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int sprintf (char*,char*,char*,void*) ;
 int strm_str_new (char*,int) ;
 scalar_t__ strm_value_vptr (int ) ;

__attribute__((used)) static strm_value
to_str(strm_stream* strm, strm_value val, char* type)
{
  char buf[256];
  int n;

  n = sprintf(buf, "<%s:%p>", type, (void*)strm_value_vptr(val));
  return strm_str_new(buf, n);
}
