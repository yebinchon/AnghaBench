; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_polygon.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@do_edit_polygon.drawing = internal global i32 0, align 4
@view_page_area = common dso_local global i32 0, align 4
@selected_annot = common dso_local global i64 0, align 8
@ui = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLUT_CURSOR_CROSSHAIR = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@view_page_ctm = common dso_local global i32 0, align 4
@GL_LINE_STRIP = common dso_local global i32 0, align 4
@GL_POINTS = common dso_local global i32 0, align 4
@view_page_inv_ctm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_edit_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_edit_polygon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ui_mouse_inside(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load i32, i32* @view_page_area, align 4
  %18 = call i64 @ui_mouse_inside(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i64, i64* @selected_annot, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 6), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %26 = load i64, i64* @selected_annot, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @GLUT_CURSOR_CROSSHAIR, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 5), align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 3), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* @selected_annot, align 8
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  store i32 1, i32* @do_edit_polygon.drawing, align 4
  br label %38

38:                                               ; preds = %36, %33, %30
  br label %39

39:                                               ; preds = %38, %16, %2
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %41 = load i64, i64* @selected_annot, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %133

43:                                               ; preds = %39
  %44 = load i32, i32* @do_edit_polygon.drawing, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %133

46:                                               ; preds = %43
  %47 = load i32, i32* @ctx, align 4
  %48 = load i64, i64* @selected_annot, align 8
  %49 = call i32 @pdf_annot_vertex_count(i32 %47, i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %106

52:                                               ; preds = %46
  %53 = load i32, i32* @ctx, align 4
  %54 = load i64, i64* @selected_annot, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i64 @pdf_annot_vertex(i32 %53, i64 %54, i32 %56)
  %58 = bitcast %struct.TYPE_8__* %8 to i64*
  store i64 %57, i64* %58, align 4
  %59 = bitcast %struct.TYPE_8__* %6 to i8*
  %60 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load i32, i32* @view_page_ctm, align 4
  %62 = bitcast %struct.TYPE_8__* %6 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i64 @fz_transform_point(i64 %63, i32 %61)
  %65 = bitcast %struct.TYPE_8__* %9 to i64*
  store i64 %64, i64* %65, align 4
  %66 = bitcast %struct.TYPE_8__* %6 to i8*
  %67 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 8, i1 false)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %52
  %71 = load i32, i32* @ctx, align 4
  %72 = load i64, i64* @selected_annot, align 8
  %73 = call i64 @pdf_annot_vertex(i32 %71, i64 %72, i32 0)
  %74 = bitcast %struct.TYPE_8__* %10 to i64*
  store i64 %73, i64* %74, align 4
  %75 = bitcast %struct.TYPE_8__* %5 to i8*
  %76 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 8, i1 false)
  %77 = load i32, i32* @view_page_ctm, align 4
  %78 = bitcast %struct.TYPE_8__* %5 to i64*
  %79 = load i64, i64* %78, align 4
  %80 = call i64 @fz_transform_point(i64 %79, i32 %77)
  %81 = bitcast %struct.TYPE_8__* %11 to i64*
  store i64 %80, i64* %81, align 4
  %82 = bitcast %struct.TYPE_8__* %5 to i8*
  %83 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  br label %84

84:                                               ; preds = %70, %52
  %85 = load i32, i32* @GL_LINE_STRIP, align 4
  %86 = call i32 @glBegin(i32 %85)
  %87 = call i32 @glColor4f(i32 1, i32 0, i32 0, i32 1)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @glVertex2f(i32 %89, i32 %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %95 = call i32 @glVertex2f(i32 %93, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @glVertex2f(i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %98, %84
  %105 = call i32 (...) @glEnd()
  br label %106

106:                                              ; preds = %104, %46
  %107 = call i32 @glColor4f(i32 1, i32 0, i32 0, i32 1)
  %108 = call i32 @glPointSize(i32 4)
  %109 = load i32, i32* @GL_POINTS, align 4
  %110 = call i32 @glBegin(i32 %109)
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %113 = call i32 @glVertex2f(i32 %111, i32 %112)
  %114 = call i32 (...) @glEnd()
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 4), align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  store i32 0, i32* @do_edit_polygon.drawing, align 4
  br label %118

118:                                              ; preds = %117, %106
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 3), align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %124 = load i32, i32* @view_page_inv_ctm, align 4
  %125 = call i64 @fz_transform_point_xy(i32 %122, i32 %123, i32 %124)
  %126 = bitcast %struct.TYPE_8__* %12 to i64*
  store i64 %125, i64* %126, align 4
  %127 = load i32, i32* @ctx, align 4
  %128 = load i64, i64* @selected_annot, align 8
  %129 = bitcast %struct.TYPE_8__* %12 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i32 @pdf_add_annot_vertex(i32 %127, i64 %128, i64 %130)
  store i32 0, i32* @do_edit_polygon.drawing, align 4
  br label %132

132:                                              ; preds = %121, %118
  br label %133

133:                                              ; preds = %132, %43, %39
  ret void
}

declare dso_local i64 @ui_mouse_inside(i32) #1

declare dso_local i32 @pdf_annot_vertex_count(i32, i64) #1

declare dso_local i64 @pdf_annot_vertex(i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fz_transform_point(i64, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @glVertex2f(i32, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glPointSize(i32) #1

declare dso_local i64 @fz_transform_point_xy(i32, i32, i32) #1

declare dso_local i32 @pdf_add_annot_vertex(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
