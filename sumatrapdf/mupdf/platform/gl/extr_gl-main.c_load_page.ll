; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_load_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_load_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@selected_annot = common dso_local global i32* null, align 8
@ctx = common dso_local global i32 0, align 4
@PDF_ANNOT_WIDGET = common dso_local global i64 0, align 8
@page_text = common dso_local global i32* null, align 8
@seps = common dso_local global i32* null, align 8
@links = common dso_local global i32* null, align 8
@fzpage = common dso_local global i32* null, align 8
@doc = common dso_local global i32 0, align 4
@currentpage = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pdf = common dso_local global i64 0, align 8
@page = common dso_local global %struct.TYPE_7__* null, align 8
@currenticc = common dso_local global i64 0, align 8
@currentseparations = common dso_local global i64 0, align 8
@FZ_SEPARATION_COMPOSITE = common dso_local global i32 0, align 4
@page_bounds = common dso_local global i32 0, align 4
@draw_page_bounds = common dso_local global i32 0, align 4
@page_tex = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_page() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = load i32*, i32** @selected_annot, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load i32, i32* @ctx, align 4
  %9 = load i32*, i32** @selected_annot, align 8
  %10 = call i64 @pdf_annot_type(i32 %8, i32* %9)
  %11 = load i64, i64* @PDF_ANNOT_WIDGET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* @ctx, align 4
  %15 = load i32*, i32** @selected_annot, align 8
  %16 = call i32 @pdf_annot_event_blur(i32 %14, i32* %15)
  br label %17

17:                                               ; preds = %13, %7, %0
  store i32* null, i32** @selected_annot, align 8
  %18 = load i32, i32* @ctx, align 4
  %19 = load i32*, i32** @page_text, align 8
  %20 = call i32 @fz_drop_stext_page(i32 %18, i32* %19)
  store i32* null, i32** @page_text, align 8
  %21 = load i32, i32* @ctx, align 4
  %22 = load i32*, i32** @seps, align 8
  %23 = call i32 @fz_drop_separations(i32 %21, i32* %22)
  store i32* null, i32** @seps, align 8
  %24 = load i32, i32* @ctx, align 4
  %25 = load i32*, i32** @links, align 8
  %26 = call i32 @fz_drop_link(i32 %24, i32* %25)
  store i32* null, i32** @links, align 8
  %27 = load i32, i32* @ctx, align 4
  %28 = load i32*, i32** @fzpage, align 8
  %29 = call i32 @fz_drop_page(i32 %27, i32* %28)
  store i32* null, i32** @fzpage, align 8
  %30 = load i32, i32* @ctx, align 4
  %31 = load i32, i32* @doc, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currentpage, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currentpage, i32 0, i32 0), align 4
  %34 = call i32* @fz_load_chapter_page(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32* %34, i32** @fzpage, align 8
  %35 = load i64, i64* @pdf, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32*, i32** @fzpage, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** @page, align 8
  br label %40

40:                                               ; preds = %37, %17
  %41 = load i32, i32* @ctx, align 4
  %42 = load i32*, i32** @fzpage, align 8
  %43 = call i32* @fz_load_links(i32 %41, i32* %42)
  store i32* %43, i32** @links, align 8
  %44 = load i32, i32* @ctx, align 4
  %45 = load i32*, i32** @fzpage, align 8
  %46 = call i32* @fz_new_stext_page_from_page(i32 %44, i32* %45, i32* null)
  store i32* %46, i32** @page_text, align 8
  %47 = load i64, i64* @currenticc, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @ctx, align 4
  %51 = call i32 @fz_enable_icc(i32 %50)
  br label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @ctx, align 4
  %54 = call i32 @fz_disable_icc(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* @currentseparations, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  %59 = load i32, i32* @ctx, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @page, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32* @fz_page_separations(i32 %59, i32* %61)
  store i32* %62, i32** @seps, align 8
  %63 = load i32*, i32** @seps, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load i32, i32* @ctx, align 4
  %67 = load i32*, i32** @seps, align 8
  %68 = call i32 @fz_count_separations(i32 %66, i32* %67)
  store i32 %68, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %79, %65
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* @ctx, align 4
  %75 = load i32*, i32** @seps, align 8
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @FZ_SEPARATION_COMPOSITE, align 4
  %78 = call i32 @fz_set_separation_behavior(i32 %74, i32* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %69

82:                                               ; preds = %69
  br label %102

83:                                               ; preds = %58
  %84 = load i32, i32* @ctx, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @page, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i64 @fz_page_uses_overprint(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @ctx, align 4
  %91 = call i32* @fz_new_separations(i32 %90, i32 0)
  store i32* %91, i32** @seps, align 8
  br label %101

92:                                               ; preds = %83
  %93 = load i32, i32* @ctx, align 4
  %94 = load i32, i32* @doc, align 4
  %95 = call i64 @fz_document_output_intent(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @ctx, align 4
  %99 = call i32* @fz_new_separations(i32 %98, i32 0)
  store i32* %99, i32** @seps, align 8
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32, i32* @ctx, align 4
  %105 = load i32*, i32** @fzpage, align 8
  %106 = call i32 @fz_bound_page(i32 %104, i32* %105)
  store i32 %106, i32* @page_bounds, align 4
  %107 = call i32 (...) @transform_page()
  %108 = load i32, i32* @draw_page_bounds, align 4
  call void @fz_irect_from_rect(%struct.TYPE_8__* sret %4, i32 %108)
  %109 = bitcast %struct.TYPE_8__* %1 to i8*
  %110 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 32, i1 false)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %112, %114
  store i64 %115, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @page_tex, i32 0, i32 1), align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %117, %119
  store i64 %120, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @page_tex, i32 0, i32 0), align 8
  ret void
}

declare dso_local i64 @pdf_annot_type(i32, i32*) #1

declare dso_local i32 @pdf_annot_event_blur(i32, i32*) #1

declare dso_local i32 @fz_drop_stext_page(i32, i32*) #1

declare dso_local i32 @fz_drop_separations(i32, i32*) #1

declare dso_local i32 @fz_drop_link(i32, i32*) #1

declare dso_local i32 @fz_drop_page(i32, i32*) #1

declare dso_local i32* @fz_load_chapter_page(i32, i32, i32, i32) #1

declare dso_local i32* @fz_load_links(i32, i32*) #1

declare dso_local i32* @fz_new_stext_page_from_page(i32, i32*, i32*) #1

declare dso_local i32 @fz_enable_icc(i32) #1

declare dso_local i32 @fz_disable_icc(i32) #1

declare dso_local i32* @fz_page_separations(i32, i32*) #1

declare dso_local i32 @fz_count_separations(i32, i32*) #1

declare dso_local i32 @fz_set_separation_behavior(i32, i32*, i32, i32) #1

declare dso_local i64 @fz_page_uses_overprint(i32, i32*) #1

declare dso_local i32* @fz_new_separations(i32, i32) #1

declare dso_local i64 @fz_document_output_intent(i32, i32) #1

declare dso_local i32 @fz_bound_page(i32, i32*) #1

declare dso_local i32 @transform_page(...) #1

declare dso_local void @fz_irect_from_rect(%struct.TYPE_8__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
