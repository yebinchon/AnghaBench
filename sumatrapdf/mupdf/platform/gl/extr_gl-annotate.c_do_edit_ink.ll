; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_ink.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_ink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i64, i64, i32, i64 }

@do_edit_ink.drawing = internal global i32 0, align 4
@do_edit_ink.p = internal global [1000 x %struct.TYPE_11__] zeroinitializer, align 16
@do_edit_ink.n = internal global i32 0, align 4
@do_edit_ink.last_x = internal global i32 0, align 4
@do_edit_ink.last_y = internal global i32 0, align 4
@view_page_area = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@selected_annot = common dso_local global i64 0, align 8
@ui = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLUT_CURSOR_CROSSHAIR = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@GL_LINE_STRIP = common dso_local global i32 0, align 4
@view_page_inv_ctm = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @do_edit_ink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_edit_ink(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 4
  %9 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 4
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 4
  %14 = call i64 @ui_mouse_inside(i64 %11, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_12__* @view_page_area to { i64, i64 }*), i32 0, i32 0), align 4
  %18 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_12__* @view_page_area to { i64, i64 }*), i32 0, i32 1), align 4
  %19 = call i64 @ui_mouse_inside(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i64, i64* @selected_annot, align 8
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 6), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 0), align 8
  %27 = load i64, i64* @selected_annot, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @GLUT_CURSOR_CROSSHAIR, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 5), align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 3), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @selected_annot, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 0), align 8
  store i32 1, i32* @do_edit_ink.drawing, align 4
  store i32 0, i32* @do_edit_ink.n, align 4
  %39 = load i32, i32* @INT_MIN, align 4
  store i32 %39, i32* @do_edit_ink.last_x, align 4
  %40 = load i32, i32* @INT_MIN, align 4
  store i32 %40, i32* @do_edit_ink.last_y, align 4
  br label %41

41:                                               ; preds = %37, %34, %31
  br label %42

42:                                               ; preds = %41, %16, %2
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 0), align 8
  %44 = load i64, i64* @selected_annot, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %157

46:                                               ; preds = %42
  %47 = load i32, i32* @do_edit_ink.drawing, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %157

49:                                               ; preds = %46
  %50 = load i32, i32* @do_edit_ink.n, align 4
  %51 = call i64 @nelem(%struct.TYPE_11__* getelementptr inbounds ([1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 0))
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 1), align 8
  %56 = load i32, i32* @do_edit_ink.last_x, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 2), align 4
  %60 = load i32, i32* @do_edit_ink.last_y, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58, %54
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 1), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @view_page_area, i32 0, i32 3), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @view_page_area, i32 0, i32 2), align 4
  %66 = call i8* @fz_clamp(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @do_edit_ink.n, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i8* %66, i8** %70, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 2), align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @view_page_area, i32 0, i32 1), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @view_page_area, i32 0, i32 0), align 4
  %74 = call i8* @fz_clamp(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @do_edit_ink.n, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i8* %74, i8** %78, align 16
  %79 = load i32, i32* @do_edit_ink.n, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @do_edit_ink.n, align 4
  br label %81

81:                                               ; preds = %62, %58, %49
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 1), align 8
  store i32 %82, i32* @do_edit_ink.last_x, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 2), align 4
  store i32 %83, i32* @do_edit_ink.last_y, align 4
  %84 = load i32, i32* @do_edit_ink.n, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load i32, i32* @GL_LINE_STRIP, align 4
  %88 = call i32 @glBegin(i32 %87)
  %89 = call i32 @glColor4f(i32 1, i32 0, i32 0, i32 1)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %106, %86
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @do_edit_ink.n, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 16
  %105 = call i32 @glVertex2f(i8* %99, i8* %104)
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %90

109:                                              ; preds = %90
  %110 = call i32 (...) @glEnd()
  br label %111

111:                                              ; preds = %109, %81
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 4), align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 0, i32* @do_edit_ink.drawing, align 4
  store i32 0, i32* @do_edit_ink.n, align 4
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui, i32 0, i32 3), align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %156, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @do_edit_ink.n, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %155

121:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %147, %121
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @do_edit_ink.n, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %122
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 %128
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 %131
  %133 = load i32, i32* @view_page_inv_ctm, align 4
  %134 = bitcast %struct.TYPE_11__* %132 to { i8*, i8* }*
  %135 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 16
  %137 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %134, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call { i8*, i8* } @fz_transform_point(i8* %136, i8* %138, i32 %133)
  %140 = bitcast %struct.TYPE_11__* %5 to { i8*, i8* }*
  %141 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %140, i32 0, i32 0
  %142 = extractvalue { i8*, i8* } %139, 0
  store i8* %142, i8** %141, align 8
  %143 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %140, i32 0, i32 1
  %144 = extractvalue { i8*, i8* } %139, 1
  store i8* %144, i8** %143, align 8
  %145 = bitcast %struct.TYPE_11__* %129 to i8*
  %146 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %145, i8* align 8 %146, i64 16, i1 false)
  br label %147

147:                                              ; preds = %126
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %122

150:                                              ; preds = %122
  %151 = load i32, i32* @ctx, align 4
  %152 = load i64, i64* @selected_annot, align 8
  %153 = load i32, i32* @do_edit_ink.n, align 4
  %154 = call i32 @pdf_add_annot_ink_list(i32 %151, i64 %152, i32 %153, %struct.TYPE_11__* getelementptr inbounds ([1000 x %struct.TYPE_11__], [1000 x %struct.TYPE_11__]* @do_edit_ink.p, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %118
  store i32 0, i32* @do_edit_ink.drawing, align 4
  store i32 0, i32* @do_edit_ink.n, align 4
  br label %156

156:                                              ; preds = %155, %115
  br label %157

157:                                              ; preds = %156, %46, %42
  ret void
}

declare dso_local i64 @ui_mouse_inside(i64, i64) #1

declare dso_local i64 @nelem(%struct.TYPE_11__*) #1

declare dso_local i8* @fz_clamp(i32, i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @glVertex2f(i8*, i8*) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local { i8*, i8* } @fz_transform_point(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_add_annot_ink_list(i32, i64, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
