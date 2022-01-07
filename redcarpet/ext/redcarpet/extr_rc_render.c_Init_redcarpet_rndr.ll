; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_rc_render.c_Init_redcarpet_rndr.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_rc_render.c_Init_redcarpet_rndr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rb_mRedcarpet = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@rb_mRender = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@rb_cObject = common dso_local global i8* null, align 8
@rb_cRenderBase = common dso_local global i8* null, align 8
@rb_redcarpet_rbase_alloc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@rb_redcarpet_rbase_init = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@rb_cRenderHTML = common dso_local global i8* null, align 8
@rb_redcarpet_html_init = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"HTML_TOC\00", align 1
@rb_cRenderHTML_TOC = common dso_local global i8* null, align 8
@rb_redcarpet_htmltoc_init = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"SmartyPants\00", align 1
@rb_mSmartyPants = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"postprocess\00", align 1
@rb_redcarpet_smartypants_render = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Init_redcarpet_rndr() #0 {
  %1 = load i8*, i8** @rb_mRedcarpet, align 8
  %2 = call i8* @rb_define_module_under(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** @rb_mRender, align 8
  %3 = load i8*, i8** @rb_mRender, align 8
  %4 = load i8*, i8** @rb_cObject, align 8
  %5 = call i8* @rb_define_class_under(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  store i8* %5, i8** @rb_cRenderBase, align 8
  %6 = load i8*, i8** @rb_cRenderBase, align 8
  %7 = load i32, i32* @rb_redcarpet_rbase_alloc, align 4
  %8 = call i32 @rb_define_alloc_func(i8* %6, i32 %7)
  %9 = load i8*, i8** @rb_cRenderBase, align 8
  %10 = load i32, i32* @rb_redcarpet_rbase_init, align 4
  %11 = call i32 @rb_define_method(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 0)
  %12 = load i8*, i8** @rb_mRender, align 8
  %13 = load i8*, i8** @rb_cRenderBase, align 8
  %14 = call i8* @rb_define_class_under(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  store i8* %14, i8** @rb_cRenderHTML, align 8
  %15 = load i8*, i8** @rb_cRenderHTML, align 8
  %16 = load i32, i32* @rb_redcarpet_html_init, align 4
  %17 = call i32 @rb_define_method(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 -1)
  %18 = load i8*, i8** @rb_mRender, align 8
  %19 = load i8*, i8** @rb_cRenderBase, align 8
  %20 = call i8* @rb_define_class_under(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  store i8* %20, i8** @rb_cRenderHTML_TOC, align 8
  %21 = load i8*, i8** @rb_cRenderHTML_TOC, align 8
  %22 = load i32, i32* @rb_redcarpet_htmltoc_init, align 4
  %23 = call i32 @rb_define_method(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 -1)
  %24 = load i8*, i8** @rb_mRender, align 8
  %25 = call i8* @rb_define_module_under(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %25, i8** @rb_mSmartyPants, align 8
  %26 = load i8*, i8** @rb_mSmartyPants, align 8
  %27 = load i32, i32* @rb_redcarpet_smartypants_render, align 4
  %28 = call i32 @rb_define_method(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %27, i32 1)
  ret void
}

declare dso_local i8* @rb_define_module_under(i8*, i8*) #1

declare dso_local i8* @rb_define_class_under(i8*, i8*, i8*) #1

declare dso_local i32 @rb_define_alloc_func(i8*, i32) #1

declare dso_local i32 @rb_define_method(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
