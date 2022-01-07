
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* w_ruby_ref; } ;
typedef TYPE_1__ win_T ;
typedef scalar_t__ VALUE ;


 scalar_t__ Data_Wrap_Struct (int ,int ,int ,TYPE_1__*) ;
 int cVimWindow ;
 int objtbl ;
 int rb_hash_aset (int ,int ,scalar_t__) ;
 int rb_obj_id (scalar_t__) ;

__attribute__((used)) static VALUE window_new(win_T *win)
{
    if (win->w_ruby_ref)
    {
 return (VALUE) win->w_ruby_ref;
    }
    else
    {
 VALUE obj = Data_Wrap_Struct(cVimWindow, 0, 0, win);
 win->w_ruby_ref = (void *) obj;
 rb_hash_aset(objtbl, rb_obj_id(obj), obj);
 return obj;
    }
}
