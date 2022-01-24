#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 void* rb_cObject ; 
 void* rb_cRenderBase ; 
 void* rb_cRenderHTML ; 
 void* rb_cRenderHTML_TOC ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (void*,char*) ; 
 void* rb_mRedcarpet ; 
 void* rb_mRender ; 
 void* rb_mSmartyPants ; 
 int /*<<< orphan*/  rb_redcarpet_html_init ; 
 int /*<<< orphan*/  rb_redcarpet_htmltoc_init ; 
 int /*<<< orphan*/  rb_redcarpet_rbase_alloc ; 
 int /*<<< orphan*/  rb_redcarpet_rbase_init ; 
 int /*<<< orphan*/  rb_redcarpet_smartypants_render ; 

void FUNC4()
{
	rb_mRender = FUNC3(rb_mRedcarpet, "Render");

	rb_cRenderBase = FUNC1(rb_mRender, "Base", rb_cObject);
	FUNC0(rb_cRenderBase, rb_redcarpet_rbase_alloc);
	FUNC2(rb_cRenderBase, "initialize", rb_redcarpet_rbase_init, 0);

	rb_cRenderHTML = FUNC1(rb_mRender, "HTML", rb_cRenderBase);
	FUNC2(rb_cRenderHTML, "initialize", rb_redcarpet_html_init, -1);

	rb_cRenderHTML_TOC = FUNC1(rb_mRender, "HTML_TOC", rb_cRenderBase);
	FUNC2(rb_cRenderHTML_TOC, "initialize", rb_redcarpet_htmltoc_init, -1);

	rb_mSmartyPants = FUNC3(rb_mRender, "SmartyPants");
	FUNC2(rb_mSmartyPants, "postprocess", rb_redcarpet_smartypants_render, 1);
}