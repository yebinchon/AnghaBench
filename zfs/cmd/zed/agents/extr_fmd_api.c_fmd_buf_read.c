
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fmd_hdl_t ;
struct TYPE_3__ {size_t ci_bufsiz; int * ci_bufptr; } ;
typedef TYPE_1__ fmd_case_t ;


 int assert (int) ;
 int bcopy (int *,void*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;

void
fmd_buf_read(fmd_hdl_t *hdl, fmd_case_t *cp,
    const char *name, void *buf, size_t size)
{
 assert(strcmp(name, "data") == 0);
 assert(cp->ci_bufptr != ((void*)0));
 assert(size <= cp->ci_bufsiz);

 bcopy(cp->ci_bufptr, buf, size);
}
