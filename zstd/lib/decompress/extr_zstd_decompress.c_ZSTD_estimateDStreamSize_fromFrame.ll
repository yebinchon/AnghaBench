; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_estimateDStreamSize_fromFrame.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_estimateDStreamSize_fromFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@srcSize_wrong = common dso_local global i32 0, align 4
@frameParameter_windowTooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_estimateDStreamSize_fromFrame(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %10 = shl i32 1, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @ZSTD_getFrameHeader(%struct.TYPE_3__* %7, i8* %12, i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @ZSTD_isError(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %3, align 8
  br label %36

20:                                               ; preds = %2
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @srcSize_wrong, align 4
  %25 = call i32 @RETURN_ERROR_IF(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @frameParameter_windowTooLarge, align 4
  %32 = call i32 @RETURN_ERROR_IF(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ZSTD_estimateDStreamSize(i64 %34)
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @ZSTD_getFrameHeader(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i64 @ZSTD_estimateDStreamSize(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
