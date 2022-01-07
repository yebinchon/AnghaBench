; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_webp_enc.c_WebPReportProgress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_webp_enc.c_WebPReportProgress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_5__*)* }

@VP8_ENC_ERROR_USER_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPReportProgress(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %19, align 8
  %21 = icmp ne i32 (i32, %struct.TYPE_5__*)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = call i32 %25(i32 %26, %struct.TYPE_5__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* @VP8_ENC_ERROR_USER_ABORT, align 4
  %33 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %36

34:                                               ; preds = %22, %15
  br label %35

35:                                               ; preds = %34, %10, %3
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
