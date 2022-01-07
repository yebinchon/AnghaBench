; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetDllVersion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetDllVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Expected PdhGetDllVersion to return PDH_INVALID_ARGUMENT, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Expected PdhGetDllVersion to return ERROR_SUCCESS, got %d\0A\00", align 1
@PDH_CVERSION_WIN50 = common dso_local global i64 0, align 8
@PDH_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"Expected version number to be PDH_CVERSION_WIN50 or PDH_VERSION, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhGetDllVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhGetDllVersion() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @PdhGetDllVersion(i64* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @broken(i32 %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %7, %0
  %15 = phi i1 [ true, %0 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i64 @PdhGetDllVersion(i64* %2)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %14
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @PDH_CVERSION_WIN50, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @PDH_VERSION, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ true, %29 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %37, %14
  ret void
}

declare dso_local i64 @PdhGetDllVersion(i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
