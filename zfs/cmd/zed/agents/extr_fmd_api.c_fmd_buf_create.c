
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fmd_hdl_t ;
struct TYPE_3__ {size_t ci_bufsiz; int * ci_bufptr; } ;
typedef TYPE_1__ fmd_case_t ;


 int FMD_SLEEP ;
 int assert (int) ;
 int * fmd_hdl_alloc (int *,size_t,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

void
fmd_buf_create(fmd_hdl_t *hdl, fmd_case_t *cp, const char *name, size_t size)
{
 assert(strcmp(name, "data") == 0);
 assert(cp->ci_bufptr == ((void*)0));
 assert(size < (1024 * 1024));

 cp->ci_bufptr = fmd_hdl_alloc(hdl, size, FMD_SLEEP);
 cp->ci_bufsiz = size;
}
