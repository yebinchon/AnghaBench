; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@search_active = common dso_local global i64 0, align 8
@GLUT_ELAPSED_TIME = common dso_local global i32 0, align 4
@ui = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@KEY_ESCAPE = common dso_local global i64 0, align 8
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@search_page = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@search_needle = common dso_local global i32 0, align 4
@search_hit_quads = common dso_local global i32 0, align 4
@search_hit_count = common dso_local global i64 0, align 8
@search_hit_page = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@search_dir = common dso_local global i64 0, align 8
@showoutline = common dso_local global i64 0, align 8
@outline = common dso_local global i32 0, align 4
@oldpage = common dso_local global i32 0, align 4
@currentpage = common dso_local global i32 0, align 4
@oldseparations = common dso_local global i64 0, align 8
@currentseparations = common dso_local global i64 0, align 8
@oldicc = common dso_local global i64 0, align 8
@currenticc = common dso_local global i64 0, align 8
@showannotate = common dso_local global i64 0, align 8
@R = common dso_local global i32 0, align 4
@BOTH = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@annotate_w = common dso_local global i32 0, align 4
@showinfo = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 4
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = load i64, i64* @search_active, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %77

6:                                                ; preds = %0
  %7 = load i32, i32* @GLUT_ELAPSED_TIME, align 4
  %8 = call i32 @glutGet(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui, i32 0, i32 0), align 8
  %10 = load i64, i64* @KEY_ESCAPE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i64 0, i64* @search_active, align 8
  br label %13

13:                                               ; preds = %12, %6
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui, i32 0, i32 5), align 8
  br label %14

14:                                               ; preds = %70, %13
  %15 = load i64, i64* @search_active, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @GLUT_ELAPSED_TIME, align 4
  %19 = call i32 @glutGet(i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 200
  %22 = icmp slt i32 %19, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %71

25:                                               ; preds = %23
  %26 = load i32, i32* @ctx, align 4
  %27 = load i32, i32* @doc, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @search_page, i32 0, i32 1), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @search_page, i32 0, i32 0), align 4
  %30 = load i32, i32* @search_needle, align 4
  %31 = load i32, i32* @search_hit_quads, align 4
  %32 = load i32, i32* @search_hit_quads, align 4
  %33 = call i32 @nelem(i32 %32)
  %34 = call i64 @fz_search_chapter_page_number(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %33)
  store i64 %34, i64* @search_hit_count, align 8
  %35 = load i64, i64* @search_hit_count, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  store i64 0, i64* @search_active, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_12__* @search_hit_page to i8*), i8* align 4 bitcast (%struct.TYPE_12__* @search_page to i8*), i64 8, i1 false)
  %38 = load i64, i64* bitcast (%struct.TYPE_12__* @search_hit_page to i64*), align 4
  %39 = call i32 @jump_to_location(i64 %38)
  br label %70

40:                                               ; preds = %25
  %41 = load i64, i64* @search_dir, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i64, i64* bitcast (%struct.TYPE_12__* @search_page to i64*), align 4
  %45 = call i64 @is_last_page(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 0, i64* @search_active, align 8
  br label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @ctx, align 4
  %50 = load i32, i32* @doc, align 4
  %51 = load i64, i64* bitcast (%struct.TYPE_12__* @search_page to i64*), align 4
  %52 = call i64 @fz_next_page(i32 %49, i32 %50, i64 %51)
  %53 = bitcast %struct.TYPE_12__* %2 to i64*
  store i64 %52, i64* %53, align 4
  %54 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_12__* @search_page to i8*), i8* align 4 %54, i64 8, i1 false)
  br label %55

55:                                               ; preds = %48, %47
  br label %69

56:                                               ; preds = %40
  %57 = load i64, i64* bitcast (%struct.TYPE_12__* @search_page to i64*), align 4
  %58 = call i64 @is_first_page(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i64 0, i64* @search_active, align 8
  br label %68

61:                                               ; preds = %56
  %62 = load i32, i32* @ctx, align 4
  %63 = load i32, i32* @doc, align 4
  %64 = load i64, i64* bitcast (%struct.TYPE_12__* @search_page to i64*), align 4
  %65 = call i64 @fz_previous_page(i32 %62, i32 %63, i64 %64)
  %66 = bitcast %struct.TYPE_12__* %3 to i64*
  store i64 %65, i64* %66, align 4
  %67 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_12__* @search_page to i8*), i8* align 4 %67, i64 8, i1 false)
  br label %68

68:                                               ; preds = %61, %60
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %37
  br label %14

71:                                               ; preds = %23
  %72 = load i64, i64* @search_active, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (...) @glutPostRedisplay()
  br label %76

76:                                               ; preds = %74, %71
  br label %77

77:                                               ; preds = %76, %0
  %78 = call i32 (...) @do_app()
  %79 = load i64, i64* @showoutline, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @outline, align 4
  %83 = call i32 @do_outline(i32 %82)
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i32, i32* @oldpage, align 4
  %86 = load i32, i32* @currentpage, align 4
  %87 = call i32 @eqloc(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i64, i64* @oldseparations, align 8
  %91 = load i64, i64* @currentseparations, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* @oldicc, align 8
  %95 = load i64, i64* @currenticc, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %89, %84
  %98 = call i32 (...) @load_page()
  %99 = call i32 (...) @update_title()
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i64, i64* @showannotate, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* @R, align 4
  %105 = load i32, i32* @BOTH, align 4
  %106 = load i32, i32* @NW, align 4
  %107 = call i32 @ui_layout(i32 %104, i32 %105, i32 %106, i32 0, i32 0)
  %108 = load i32, i32* @annotate_w, align 4
  %109 = call i32 @ui_panel_begin(i32 %108, i32 0, i32 4, i32 4, i32 1)
  %110 = call i32 (...) @do_annotate_panel()
  %111 = call i32 (...) @ui_panel_end()
  br label %112

112:                                              ; preds = %103, %100
  %113 = call i32 (...) @do_canvas()
  %114 = load i64, i64* @showinfo, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 (...) @do_info()
  br label %118

118:                                              ; preds = %116, %112
  ret void
}

declare dso_local i32 @glutGet(i32) #1

declare dso_local i64 @fz_search_chapter_page_number(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nelem(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jump_to_location(i64) #1

declare dso_local i64 @is_last_page(i64) #1

declare dso_local i64 @fz_next_page(i32, i32, i64) #1

declare dso_local i64 @is_first_page(i64) #1

declare dso_local i64 @fz_previous_page(i32, i32, i64) #1

declare dso_local i32 @glutPostRedisplay(...) #1

declare dso_local i32 @do_app(...) #1

declare dso_local i32 @do_outline(i32) #1

declare dso_local i32 @eqloc(i32, i32) #1

declare dso_local i32 @load_page(...) #1

declare dso_local i32 @update_title(...) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_panel_begin(i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_annotate_panel(...) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i32 @do_canvas(...) #1

declare dso_local i32 @do_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
