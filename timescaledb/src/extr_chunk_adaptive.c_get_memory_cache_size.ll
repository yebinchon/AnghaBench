; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_get_memory_cache_size.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_get_memory_cache_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fixed_memory_cache_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"shared_buffers\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"missing configuration for 'shared_buffers'\00", align 1
@GUC_UNIT_BLOCKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"could not parse 'shared_buffers' setting: %s\00", align 1
@BLCKSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_memory_cache_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_memory_cache_size() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* @fixed_memory_cache_size, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @fixed_memory_cache_size, align 8
  store i64 %9, i64* %1, align 8
  br label %33

10:                                               ; preds = %0
  %11 = call i8* @GetConfigOption(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp eq i8* null, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 (i32, i8*, ...) @elog(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @GUC_UNIT_BLOCKS, align 4
  %20 = call i32 @parse_int(i8* %18, i32* %4, i32 %19, i8** %3)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i32, i8*, ...) @elog(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* @BLCKSZ, align 8
  %30 = load i64, i64* %5, align 8
  %31 = mul nsw i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %1, align 8
  br label %33

33:                                               ; preds = %26, %8
  %34 = load i64, i64* %1, align 8
  ret i64 %34
}

declare dso_local i8* @GetConfigOption(i8*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @parse_int(i8*, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
