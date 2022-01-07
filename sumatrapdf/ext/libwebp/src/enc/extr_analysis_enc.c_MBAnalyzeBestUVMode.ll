; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_analysis_enc.c_MBAnalyzeBestUVMode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_analysis_enc.c_MBAnalyzeBestUVMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@DEFAULT_ALPHA = common dso_local global i32 0, align 4
@MAX_UV_MODE = common dso_local global i32 0, align 4
@U_OFF_ENC = common dso_local global i64 0, align 8
@VP8UVModeOffsets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @MBAnalyzeBestUVMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MBAnalyzeBestUVMode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load i32, i32* @DEFAULT_ALPHA, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @MAX_UV_MODE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call i32 @VP8MakeChroma8Preds(%struct.TYPE_5__* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = call i32 @InitHistogram(i32* %8)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @U_OFF_ENC, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** @VP8UVModeOffsets, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %27, %32
  %34 = call i32 @VP8CollectHistogram(i64 %24, i64 %33, i32 16, i32 24, i32* %8)
  %35 = call i32 @GetAlpha(i32* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @IS_BETTER_ALPHA(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %18
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @VP8SetIntraUVMode(%struct.TYPE_5__* %57, i32 %58)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @VP8MakeChroma8Preds(%struct.TYPE_5__*) #1

declare dso_local i32 @InitHistogram(i32*) #1

declare dso_local i32 @VP8CollectHistogram(i64, i64, i32, i32, i32*) #1

declare dso_local i32 @GetAlpha(i32*) #1

declare dso_local i64 @IS_BETTER_ALPHA(i32, i32) #1

declare dso_local i32 @VP8SetIntraUVMode(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
