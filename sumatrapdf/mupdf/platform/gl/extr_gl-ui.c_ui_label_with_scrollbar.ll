; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_label_with_scrollbar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_label_with_scrollbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.line = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@ui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@UI_COLOR_TEXT_FG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_label_with_scrollbar(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [500 x %struct.line], align 16
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  call void @ui_pack(%struct.TYPE_5__* sret %12, i32 %13, i32 %14)
  %15 = bitcast %struct.TYPE_5__* %10 to i8*
  %16 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds [500 x %struct.line], [500 x %struct.line]* %9, i64 0, i64 0
  %19 = getelementptr inbounds [500 x %struct.line], [500 x %struct.line]* %9, i64 0, i64 0
  %20 = call i32 @nelem(%struct.line* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = sub nsw i64 %25, 16
  %27 = call i32 @ui_break_lines(i8* %17, %struct.line* %18, i32 %20, i64 %26, i32* null)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %30, %32
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 0), align 4
  %35 = sdiv i32 %33, %34
  %36 = icmp sgt i32 %28, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %4
  %38 = call i64 @ui_mouse_inside(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 1), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 0), align 4
  %43 = mul nsw i32 %41, %42
  %44 = mul nsw i32 %43, 3
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 16
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %60, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 0), align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @ui_scrollbar(i64 %51, i32 %53, i64 %55, i32 %57, i32* %58, i32 %63, i32 %66)
  br label %70

68:                                               ; preds = %4
  %69 = load i32*, i32** %8, align 8
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %48
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 2), align 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %73, %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = sub nsw i64 %81, 16
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %84, %86
  %88 = call i32 @glScissor(i64 %72, i32 %76, i64 %82, i32 %87)
  %89 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %90 = call i32 @glEnable(i32 %89)
  %91 = load i32, i32* @UI_COLOR_TEXT_FG, align 4
  %92 = call i32 @glColorHex(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %96, %98
  %100 = getelementptr inbounds [500 x %struct.line], [500 x %struct.line]* %9, i64 0, i64 0
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @ui_draw_lines(i64 %94, i32 %99, %struct.line* %100, i32 %101)
  %103 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %104 = call i32 @glDisable(i32 %103)
  ret void
}

declare dso_local void @ui_pack(%struct.TYPE_5__* sret, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ui_break_lines(i8*, %struct.line*, i32, i64, i32*) #1

declare dso_local i32 @nelem(%struct.line*) #1

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @ui_scrollbar(i64, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @glScissor(i64, i32, i64, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glColorHex(i32) #1

declare dso_local i32 @ui_draw_lines(i64, i32, %struct.line*, i32) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
