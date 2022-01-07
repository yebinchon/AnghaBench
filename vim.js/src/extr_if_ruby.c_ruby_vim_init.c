
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT2NUM (int ) ;
 int VIM_VERSION_BUILD ;
 int VIM_VERSION_LONG ;
 int VIM_VERSION_LONG_DATE ;
 int VIM_VERSION_MAJOR ;
 int VIM_VERSION_MEDIUM ;
 int VIM_VERSION_MINOR ;
 int VIM_VERSION_PATCHLEVEL ;
 int VIM_VERSION_SHORT ;
 int buffer_append ;
 int buffer_aref ;
 int buffer_aset ;
 int buffer_count ;
 int buffer_delete ;
 int buffer_name ;
 int buffer_number ;
 int buffer_s_aref ;
 int buffer_s_count ;
 int buffer_s_current ;
 void* cBuffer ;
 void* cVimWindow ;
 int current_line_number ;
 void* eDeletedBufferError ;
 void* eDeletedWindowError ;
 int line_s_current ;
 int mVIM ;
 int objtbl ;
 int rb_cObject ;
 void* rb_define_class_under (int ,char*,int ) ;
 int rb_define_const (int ,char*,int ) ;
 int rb_define_method (void*,char*,int ,int) ;
 int rb_define_module (char*) ;
 int rb_define_module_function (int ,char*,int ,int) ;
 int rb_define_singleton_method (void*,char*,int ,int) ;
 int rb_define_virtual_variable (char*,int ,int ) ;
 int rb_eStandardError ;
 int rb_global_variable (int *) ;
 int rb_hash_new () ;
 int rb_str_new2 (int ) ;
 int set_current_line ;
 int vim_command ;
 int vim_evaluate ;
 int vim_message ;
 int vim_set_option ;
 int window_buffer ;
 int window_cursor ;
 int window_height ;
 int window_s_aref ;
 int window_s_count ;
 int window_s_current ;
 int window_set_cursor ;
 int window_set_height ;
 int window_set_width ;
 int window_width ;

__attribute__((used)) static void ruby_vim_init(void)
{
    objtbl = rb_hash_new();
    rb_global_variable(&objtbl);



    mVIM = rb_define_module("Vim");
    rb_define_const(rb_cObject, "VIM", mVIM);
    rb_define_const(mVIM, "VERSION_MAJOR", INT2NUM(VIM_VERSION_MAJOR));
    rb_define_const(mVIM, "VERSION_MINOR", INT2NUM(VIM_VERSION_MINOR));
    rb_define_const(mVIM, "VERSION_BUILD", INT2NUM(VIM_VERSION_BUILD));
    rb_define_const(mVIM, "VERSION_PATCHLEVEL", INT2NUM(VIM_VERSION_PATCHLEVEL));
    rb_define_const(mVIM, "VERSION_SHORT", rb_str_new2(VIM_VERSION_SHORT));
    rb_define_const(mVIM, "VERSION_MEDIUM", rb_str_new2(VIM_VERSION_MEDIUM));
    rb_define_const(mVIM, "VERSION_LONG", rb_str_new2(VIM_VERSION_LONG));
    rb_define_const(mVIM, "VERSION_LONG_DATE", rb_str_new2(VIM_VERSION_LONG_DATE));
    rb_define_module_function(mVIM, "message", vim_message, 1);
    rb_define_module_function(mVIM, "set_option", vim_set_option, 1);
    rb_define_module_function(mVIM, "command", vim_command, 1);
    rb_define_module_function(mVIM, "evaluate", vim_evaluate, 1);

    eDeletedBufferError = rb_define_class_under(mVIM, "DeletedBufferError",
      rb_eStandardError);
    eDeletedWindowError = rb_define_class_under(mVIM, "DeletedWindowError",
      rb_eStandardError);

    cBuffer = rb_define_class_under(mVIM, "Buffer", rb_cObject);
    rb_define_singleton_method(cBuffer, "current", buffer_s_current, 0);
    rb_define_singleton_method(cBuffer, "count", buffer_s_count, 0);
    rb_define_singleton_method(cBuffer, "[]", buffer_s_aref, 1);
    rb_define_method(cBuffer, "name", buffer_name, 0);
    rb_define_method(cBuffer, "number", buffer_number, 0);
    rb_define_method(cBuffer, "count", buffer_count, 0);
    rb_define_method(cBuffer, "length", buffer_count, 0);
    rb_define_method(cBuffer, "[]", buffer_aref, 1);
    rb_define_method(cBuffer, "[]=", buffer_aset, 2);
    rb_define_method(cBuffer, "delete", buffer_delete, 1);
    rb_define_method(cBuffer, "append", buffer_append, 2);



    rb_define_method(cBuffer, "line_number", current_line_number, 0);
    rb_define_method(cBuffer, "line", line_s_current, 0);
    rb_define_method(cBuffer, "line=", set_current_line, 1);


    cVimWindow = rb_define_class_under(mVIM, "Window", rb_cObject);
    rb_define_singleton_method(cVimWindow, "current", window_s_current, 0);
    rb_define_singleton_method(cVimWindow, "count", window_s_count, 0);
    rb_define_singleton_method(cVimWindow, "[]", window_s_aref, 1);
    rb_define_method(cVimWindow, "buffer", window_buffer, 0);
    rb_define_method(cVimWindow, "height", window_height, 0);
    rb_define_method(cVimWindow, "height=", window_set_height, 1);
    rb_define_method(cVimWindow, "width", window_width, 0);
    rb_define_method(cVimWindow, "width=", window_set_width, 1);
    rb_define_method(cVimWindow, "cursor", window_cursor, 0);
    rb_define_method(cVimWindow, "cursor=", window_set_cursor, 1);

    rb_define_virtual_variable("$curbuf", buffer_s_current, 0);
    rb_define_virtual_variable("$curwin", window_s_current, 0);
}
