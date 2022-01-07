; ModuleID = '/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_simple.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_simple.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstDxt1 = common dso_local global i32 0, align 4
@srcZstd = common dso_local global i32 0, align 4
@rawDxt1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Decompressed size: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Byte comparison: %s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @dstDxt1, align 4
  %5 = load i32, i32* @srcZstd, align 4
  %6 = call i64 @ZSTD_decompress(i32 %4, i32 4, i32 %5, i32 4)
  store i64 %6, i64* %2, align 8
  %7 = load i32, i32* @rawDxt1, align 4
  %8 = load i32, i32* @dstDxt1, align 4
  %9 = call i32 @memcmp(i32 %7, i32 %8, i32 4)
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* %2, align 8
  %11 = icmp eq i64 %10, 4
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  %20 = load i64, i64* %2, align 8
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %0
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %22, %0
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i64 @ZSTD_decompress(i32, i32, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
