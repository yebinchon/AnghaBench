; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_GetFilterMap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_GetFilterMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WEBP_FILTER_FAST = common dso_local global i32 0, align 4
@WEBP_FILTER_NONE = common dso_local global i32 0, align 4
@FILTER_TRY_NONE = common dso_local global i32 0, align 4
@FILTER_TRY_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @GetFilterMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFilterMap(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @WEBP_FILTER_FAST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 3
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 192, i32* %14, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @GetNumColors(i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp sle i32 %28, 16
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @WEBP_FILTER_NONE, align 4
  br label %38

32:                                               ; preds = %19
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @WebPEstimateBestFilter(i32* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %30
  %39 = phi i32 [ %31, %30 ], [ %37, %32 ]
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %15, align 4
  %48 = icmp sgt i32 %47, 192
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %38
  %50 = load i32, i32* @FILTER_TRY_NONE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %46
  br label %63

54:                                               ; preds = %5
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @WEBP_FILTER_NONE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @FILTER_TRY_NONE, align 4
  store i32 %59, i32* %11, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @FILTER_TRY_ALL, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @GetNumColors(i32*, i32, i32, i32) #1

declare dso_local i32 @WebPEstimateBestFilter(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
