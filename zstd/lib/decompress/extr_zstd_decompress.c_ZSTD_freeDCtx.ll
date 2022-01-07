; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_freeDCtx.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_freeDCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_5__*, i32, i32 }

@memory_allocation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"not compatible with static DCtx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_freeDCtx(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @memory_allocation, align 4
  %13 = call i32 @RETURN_ERROR_IF(i32 %11, i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i32 @ZSTD_clearDict(%struct.TYPE_5__* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ZSTD_free(%struct.TYPE_5__* %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ZSTD_free(%struct.TYPE_5__* %26, i32 %27)
  store i64 0, i64* %2, align 8
  br label %29

29:                                               ; preds = %8, %7
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*) #1

declare dso_local i32 @ZSTD_clearDict(%struct.TYPE_5__*) #1

declare dso_local i32 @ZSTD_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
