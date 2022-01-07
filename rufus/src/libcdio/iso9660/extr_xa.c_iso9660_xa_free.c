
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_xa_t ;


 int free (int *) ;

void
iso9660_xa_free (iso9660_xa_t *_xa)
{
  if (_xa != ((void*)0))
    free(_xa);
}
