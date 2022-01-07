
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int do_free; int * name; int * vtable; } ;
typedef TYPE_1__ exception ;


 int FALSE ;
 int MSVCRT_exception_vtable ;
 int * MSVCRT_malloc (size_t) ;
 int TRUE ;
 int memcpy (int *,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void EXCEPTION_ctor(exception *_this, const char** name)
{
  _this->vtable = &MSVCRT_exception_vtable;
  if (*name)
  {
    size_t name_len = strlen(*name) + 1;
    _this->name = MSVCRT_malloc(name_len);
    memcpy(_this->name, *name, name_len);
    _this->do_free = TRUE;
  }
  else
  {
    _this->name = ((void*)0);
    _this->do_free = FALSE;
  }
}
