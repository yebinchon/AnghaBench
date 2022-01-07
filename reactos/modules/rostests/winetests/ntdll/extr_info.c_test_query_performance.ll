; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_performance.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SystemPerformanceInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\0A\00", align 1
@is_wow64 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Inconsistent length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_performance() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [6 x i32], align 16
  %4 = alloca i64, align 8
  store i64 4, i64* %4, align 8
  %5 = load i32, i32* @SystemPerformanceInformation, align 4
  %6 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %7 = call i64 @pNtQuerySystemInformation(i32 %5, i32* %6, i64 0, i64* %2)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @SystemPerformanceInformation, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @pNtQuerySystemInformation(i32 %14, i32* %15, i64 %16, i64* %2)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %0
  %22 = load i64, i64* @is_wow64, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %25, 16
  store i64 %26, i64* %4, align 8
  %27 = load i32, i32* @SystemPerformanceInformation, align 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @pNtQuerySystemInformation(i32 %27, i32* %28, i64 %29, i64* %2)
  store i64 %30, i64* %1, align 8
  br label %31

31:                                               ; preds = %24, %21, %0
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @STATUS_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @SystemPerformanceInformation, align 4
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %46 = load i64, i64* %4, align 8
  %47 = add nsw i64 %46, 2
  %48 = call i64 @pNtQuerySystemInformation(i32 %44, i32* %45, i64 %47, i64* %2)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @STATUS_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %31
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, 2
  %62 = icmp eq i64 %59, %61
  br label %63

63:                                               ; preds = %58, %31
  %64 = phi i1 [ true, %31 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %2, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  ret void
}

declare dso_local i64 @pNtQuerySystemInformation(i32, i32*, i64, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
