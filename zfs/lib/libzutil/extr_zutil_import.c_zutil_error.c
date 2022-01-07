
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libpc_handle_t ;


 int zutil_error_fmt (int *,char const*,char*,char const*) ;

__attribute__((used)) static int
zutil_error(libpc_handle_t *hdl, const char *error, const char *msg)
{
 return (zutil_error_fmt(hdl, error, "%s", msg));
}
