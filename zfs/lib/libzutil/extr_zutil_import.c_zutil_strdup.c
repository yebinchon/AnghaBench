
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libpc_handle_t ;


 char* strdup (char const*) ;
 int zutil_no_memory (int *) ;

char *
zutil_strdup(libpc_handle_t *hdl, const char *str)
{
 char *ret;

 if ((ret = strdup(str)) == ((void*)0))
  (void) zutil_no_memory(hdl);

 return (ret);
}
