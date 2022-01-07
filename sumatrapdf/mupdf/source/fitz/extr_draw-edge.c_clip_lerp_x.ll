; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_clip_lerp_x.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_clip_lerp_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSIDE = common dso_local global i32 0, align 4
@OUTSIDE = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32*)* @clip_lerp_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_lerp_x(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %21, %22
  %24 = zext i1 %23 to i32
  br label %30

25:                                               ; preds = %7
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %24, %20 ], [ %29, %25 ]
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %35, %36
  %38 = zext i1 %37 to i32
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %38, %34 ], [ %43, %39 ]
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @INSIDE, align 4
  store i32 %51, i32* %8, align 4
  br label %102

52:                                               ; preds = %44
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %53, %54
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @OUTSIDE, align 4
  store i32 %58, i32* %8, align 4
  br label %102

59:                                               ; preds = %52
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sitofp i32 %66 to float
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sitofp i32 %70 to float
  %72 = fmul float %67, %71
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sitofp i32 %75 to float
  %77 = fdiv float %72, %76
  %78 = fptosi float %77 to i32
  %79 = add nsw i32 %63, %78
  %80 = load i32*, i32** %15, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @LEAVE, align 4
  store i32 %81, i32* %8, align 4
  br label %102

82:                                               ; preds = %59
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sitofp i32 %86 to float
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sitofp i32 %90 to float
  %92 = fmul float %87, %91
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sitofp i32 %95 to float
  %97 = fdiv float %92, %96
  %98 = fptosi float %97 to i32
  %99 = add nsw i32 %83, %98
  %100 = load i32*, i32** %15, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @ENTER, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %82, %62, %57, %50
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
