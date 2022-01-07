; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-format-util.c_test_format_bytes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-format-util.c_test_format_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"900B\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"900\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1023B\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1.0K\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"1K\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1023\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1.1K\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1.4K\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1.5K\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"3.0M\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"3M\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"3.1M\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"3.0G\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"3G\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"3.2G\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"3.0T\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"3T\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"3.2T\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"3.0P\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"3P\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"3.3P\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"3.0E\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"3E\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"3.4E\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_format_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format_bytes() #0 {
  %1 = call i32 @test_format_bytes_one(i32 900, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @test_format_bytes_one(i32 900, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @test_format_bytes_one(i32 1023, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %4 = call i32 @test_format_bytes_one(i32 1023, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %5 = call i32 @test_format_bytes_one(i32 1024, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @test_format_bytes_one(i32 1024, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 @test_format_bytes_one(i32 1100, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 @test_format_bytes_one(i32 1500, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 @UINT64_C(i32 3)
  %10 = mul nsw i32 %9, 1024
  %11 = mul nsw i32 %10, 1024
  %12 = call i32 @test_format_bytes_one(i32 %11, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %13 = call i32 @UINT64_C(i32 3)
  %14 = mul nsw i32 %13, 1024
  %15 = mul nsw i32 %14, 1024
  %16 = mul nsw i32 %15, 1024
  %17 = call i32 @test_format_bytes_one(i32 %16, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %18 = call i32 @UINT64_C(i32 3)
  %19 = mul nsw i32 %18, 1024
  %20 = mul nsw i32 %19, 1024
  %21 = mul nsw i32 %20, 1024
  %22 = mul nsw i32 %21, 1024
  %23 = call i32 @test_format_bytes_one(i32 %22, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %24 = call i32 @UINT64_C(i32 3)
  %25 = mul nsw i32 %24, 1024
  %26 = mul nsw i32 %25, 1024
  %27 = mul nsw i32 %26, 1024
  %28 = mul nsw i32 %27, 1024
  %29 = mul nsw i32 %28, 1024
  %30 = call i32 @test_format_bytes_one(i32 %29, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %31 = call i32 @UINT64_C(i32 3)
  %32 = mul nsw i32 %31, 1024
  %33 = mul nsw i32 %32, 1024
  %34 = mul nsw i32 %33, 1024
  %35 = mul nsw i32 %34, 1024
  %36 = mul nsw i32 %35, 1024
  %37 = mul nsw i32 %36, 1024
  %38 = call i32 @test_format_bytes_one(i32 %37, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %39 = load i32, i32* @UINT64_MAX, align 4
  %40 = call i32 @test_format_bytes_one(i32 %39, i32 1, i8* null, i8* null, i8* null, i8* null)
  %41 = load i32, i32* @UINT64_MAX, align 4
  %42 = call i32 @test_format_bytes_one(i32 %41, i32 0, i8* null, i8* null, i8* null, i8* null)
  ret void
}

declare dso_local i32 @test_format_bytes_one(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
