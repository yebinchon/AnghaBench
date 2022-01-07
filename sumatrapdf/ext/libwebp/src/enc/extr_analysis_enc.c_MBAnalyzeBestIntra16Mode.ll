; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_analysis_enc.c_MBAnalyzeBestIntra16Mode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_analysis_enc.c_MBAnalyzeBestIntra16Mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@MAX_INTRA16_MODE = common dso_local global i32 0, align 4
@DEFAULT_ALPHA = common dso_local global i32 0, align 4
@Y_OFF_ENC = common dso_local global i64 0, align 8
@VP8I16ModeOffsets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @MBAnalyzeBestIntra16Mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MBAnalyzeBestIntra16Mode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load i32, i32* @MAX_INTRA16_MODE, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @DEFAULT_ALPHA, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @VP8MakeLuma16Preds(%struct.TYPE_5__* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %43, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = call i32 @InitHistogram(i32* %7)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @Y_OFF_ENC, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** @VP8I16ModeOffsets, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = call i32 @VP8CollectHistogram(i64 %23, i64 %32, i32 0, i32 16, i32* %7)
  %34 = call i32 @GetAlpha(i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @IS_BETTER_ALPHA(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %17
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %13

46:                                               ; preds = %13
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @VP8SetIntra16Mode(%struct.TYPE_5__* %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @VP8MakeLuma16Preds(%struct.TYPE_5__*) #1

declare dso_local i32 @InitHistogram(i32*) #1

declare dso_local i32 @VP8CollectHistogram(i64, i64, i32, i32, i32*) #1

declare dso_local i32 @GetAlpha(i32*) #1

declare dso_local i64 @IS_BETTER_ALPHA(i32, i32) #1

declare dso_local i32 @VP8SetIntra16Mode(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
