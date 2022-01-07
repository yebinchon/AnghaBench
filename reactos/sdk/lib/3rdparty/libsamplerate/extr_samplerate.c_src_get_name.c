
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* linear_get_name (int) ;
 char* sinc_get_name (int) ;
 char* zoh_get_name (int) ;

const char *
src_get_name (int converter_type)
{ const char *desc ;

 if ((desc = sinc_get_name (converter_type)) != ((void*)0))
  return desc ;

 if ((desc = zoh_get_name (converter_type)) != ((void*)0))
  return desc ;

 if ((desc = linear_get_name (converter_type)) != ((void*)0))
  return desc ;

 return ((void*)0) ;
}
