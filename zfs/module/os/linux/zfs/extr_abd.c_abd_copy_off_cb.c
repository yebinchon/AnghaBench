
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static int
abd_copy_off_cb(void *dbuf, void *sbuf, size_t size, void *private)
{
 (void) memcpy(dbuf, sbuf, size);
 return (0);
}
