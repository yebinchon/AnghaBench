
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* rb_cObject ;
 void* rb_cRenderBase ;
 void* rb_cRenderHTML ;
 void* rb_cRenderHTML_TOC ;
 int rb_define_alloc_func (void*,int ) ;
 void* rb_define_class_under (void*,char*,void*) ;
 int rb_define_method (void*,char*,int ,int) ;
 void* rb_define_module_under (void*,char*) ;
 void* rb_mRedcarpet ;
 void* rb_mRender ;
 void* rb_mSmartyPants ;
 int rb_redcarpet_html_init ;
 int rb_redcarpet_htmltoc_init ;
 int rb_redcarpet_rbase_alloc ;
 int rb_redcarpet_rbase_init ;
 int rb_redcarpet_smartypants_render ;

void Init_redcarpet_rndr()
{
 rb_mRender = rb_define_module_under(rb_mRedcarpet, "Render");

 rb_cRenderBase = rb_define_class_under(rb_mRender, "Base", rb_cObject);
 rb_define_alloc_func(rb_cRenderBase, rb_redcarpet_rbase_alloc);
 rb_define_method(rb_cRenderBase, "initialize", rb_redcarpet_rbase_init, 0);

 rb_cRenderHTML = rb_define_class_under(rb_mRender, "HTML", rb_cRenderBase);
 rb_define_method(rb_cRenderHTML, "initialize", rb_redcarpet_html_init, -1);

 rb_cRenderHTML_TOC = rb_define_class_under(rb_mRender, "HTML_TOC", rb_cRenderBase);
 rb_define_method(rb_cRenderHTML_TOC, "initialize", rb_redcarpet_htmltoc_init, -1);

 rb_mSmartyPants = rb_define_module_under(rb_mRender, "SmartyPants");
 rb_define_method(rb_mSmartyPants, "postprocess", rb_redcarpet_smartypants_render, 1);
}
