; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_layout_block_page_break.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_layout_block_page_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB_ALWAYS = common dso_local global i32 0, align 4
@PB_LEFT = common dso_local global i32 0, align 4
@PB_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, float*, float, float, i32)* @layout_block_page_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_block_page_break(i32* %0, float* %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store float* %1, float** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load float, float* %9, align 4
  %15 = fcmp ole float %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %87

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @PB_ALWAYS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @PB_LEFT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PB_RIGHT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %25, %21, %17
  %30 = load float, float* %9, align 4
  %31 = load float*, float** %8, align 8
  %32 = load float, float* %31, align 4
  %33 = load float, float* %10, align 4
  %34 = fsub float %32, %33
  %35 = load float, float* %9, align 4
  %36 = call float @fmodf(float %34, float %35) #2
  %37 = fsub float %30, %36
  store float %37, float* %12, align 4
  %38 = load float*, float** %8, align 8
  %39 = load float, float* %38, align 4
  %40 = load float, float* %9, align 4
  %41 = fmul float %40, 0x3FB99999A0000000
  %42 = fadd float %39, %41
  %43 = load float, float* %9, align 4
  %44 = fdiv float %42, %43
  %45 = fptosi float %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load float, float* %12, align 4
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %48, label %85

48:                                               ; preds = %29
  %49 = load float, float* %12, align 4
  %50 = load float, float* %9, align 4
  %51 = fcmp olt float %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load float, float* %12, align 4
  %54 = load float, float* %10, align 4
  %55 = fsub float %53, %54
  %56 = load float*, float** %8, align 8
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, %55
  store float %58, float* %56, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @PB_LEFT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %52
  %63 = load i32, i32* %13, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load float, float* %9, align 4
  %68 = load float*, float** %8, align 8
  %69 = load float, float* %68, align 4
  %70 = fadd float %69, %67
  store float %70, float* %68, align 4
  br label %71

71:                                               ; preds = %66, %62, %52
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @PB_RIGHT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load float, float* %9, align 4
  %81 = load float*, float** %8, align 8
  %82 = load float, float* %81, align 4
  %83 = fadd float %82, %80
  store float %83, float* %81, align 4
  br label %84

84:                                               ; preds = %79, %75, %71
  store i32 1, i32* %6, align 4
  br label %87

85:                                               ; preds = %48, %29
  br label %86

86:                                               ; preds = %85, %25
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %84, %16
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare dso_local float @fmodf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
