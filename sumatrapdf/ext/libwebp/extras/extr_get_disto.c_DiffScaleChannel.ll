; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_DiffScaleChannel.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_DiffScaleChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32, i32, i32)* @DiffScaleChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DiffScaleChannel(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %75, %8
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %20, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %12, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %21, align 8
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %70, %27
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = mul nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %40
  %47 = load i32*, i32** %20, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %21, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %51, %56
  %58 = call i32 @abs(i32 %57) #3
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %46
  %63 = load i32, i32* %22, align 4
  store i32 %63, i32* %19, align 4
  br label %64

64:                                               ; preds = %62, %46
  %65 = load i32, i32* %22, align 4
  %66 = load i32*, i32** %20, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %17, align 4
  br label %40

74:                                               ; preds = %40
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %23

78:                                               ; preds = %23
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @RescalePlane(i32* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32, i32* %19, align 4
  ret i32 %90
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @RescalePlane(i32*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
