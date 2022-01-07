; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_ui_draw_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_ui_draw_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_string(float %0, float %1, i8* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @ui_begin_text()
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @fz_chartorune(i32* %7, i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %6, align 8
  %19 = load float, float* %4, align 4
  %20 = load float, float* %5, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %22 = sitofp i64 %21 to float
  %23 = fadd float %20, %22
  %24 = fptosi float %23 to i64
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @ui_draw_character_imp(float %19, i64 %24, i32 %25)
  %27 = sitofp i64 %26 to float
  %28 = load float, float* %4, align 4
  %29 = fadd float %28, %27
  store float %29, float* %4, align 4
  br label %9

30:                                               ; preds = %9
  %31 = call i32 (...) @ui_end_text()
  ret void
}

declare dso_local i32 @ui_begin_text(...) #1

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local i64 @ui_draw_character_imp(float, i64, i32) #1

declare dso_local i32 @ui_end_text(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
