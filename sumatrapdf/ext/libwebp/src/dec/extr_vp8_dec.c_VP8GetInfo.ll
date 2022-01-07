; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_VP8GetInfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_VP8GetInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VP8_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8GetInfo(i32* %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @VP8_FRAME_HEADER_SIZE, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  store i32 0, i32* %6, align 4
  br label %110

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 3
  %28 = call i32 @VP8CheckSignature(i32* %25, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %110

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 %39, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = and i32 %57, 16383
  store i32 %58, i32* %14, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 9
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = and i32 %66, 16383
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %110

71:                                               ; preds = %31
  %72 = load i32, i32* %12, align 4
  %73 = ashr i32 %72, 1
  %74 = and i32 %73, 7
  %75 = icmp sgt i32 %74, 3
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %110

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = ashr i32 %78, 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %110

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 5
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %9, align 8
  %88 = icmp uge i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %110

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90
  store i32 0, i32* %6, align 4
  br label %110

97:                                               ; preds = %93
  %98 = load i32*, i32** %10, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32*, i32** %11, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = load i32*, i32** %11, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %103
  store i32 1, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %96, %89, %82, %76, %70, %30, %22
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @VP8CheckSignature(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
