
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; int offset; int size; } ;
typedef TYPE_1__ xattr_filldir_t ;


 int ERANGE ;
 int memcpy (char*,char const*,int) ;
 int zpl_xattr_permission (TYPE_1__*,char const*,int) ;

__attribute__((used)) static int
zpl_xattr_filldir(xattr_filldir_t *xf, const char *name, int name_len)
{

 if (!zpl_xattr_permission(xf, name, name_len))
  return (0);


 if (xf->buf) {
  if (xf->offset + name_len + 1 > xf->size)
   return (-ERANGE);

  memcpy(xf->buf + xf->offset, name, name_len);
  xf->buf[xf->offset + name_len] = '\0';
 }

 xf->offset += (name_len + 1);

 return (0);
}
