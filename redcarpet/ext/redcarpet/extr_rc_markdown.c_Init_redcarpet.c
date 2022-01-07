
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Init_redcarpet_rndr () ;
 int rb_cMarkdown ;
 int rb_cObject ;
 int rb_define_class_under (int ,char*,int ) ;
 int rb_define_method (int ,char*,int ,int) ;
 int rb_define_module (char*) ;
 int rb_define_singleton_method (int ,char*,int ,int) ;
 int rb_mRedcarpet ;
 int rb_redcarpet_md__new ;
 int rb_redcarpet_md_render ;

__attribute__((visibility("default")))
void Init_redcarpet()
{
 rb_mRedcarpet = rb_define_module("Redcarpet");

 rb_cMarkdown = rb_define_class_under(rb_mRedcarpet, "Markdown", rb_cObject);
 rb_define_singleton_method(rb_cMarkdown, "new", rb_redcarpet_md__new, -1);
 rb_define_method(rb_cMarkdown, "render", rb_redcarpet_md_render, 1);

 Init_redcarpet_rndr();
}
