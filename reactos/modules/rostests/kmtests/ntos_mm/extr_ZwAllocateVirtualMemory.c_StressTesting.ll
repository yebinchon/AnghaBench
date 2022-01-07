; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwAllocateVirtualMemory.c_StressTesting.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwAllocateVirtualMemory.c_StressTesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@StressTesting.bases = internal global [1024 x i32*] zeroinitializer, align 16
@PAGE_READWRITE = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i64 0, align 8
@TestString = common dso_local global i32 0, align 4
@TestStringSize = common dso_local global i32 0, align 4
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Finished reserving. Error code %x. Chunks allocated: %d\0A\00", align 1
@MEM_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @StressTesting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StressTesting(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %9, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32* null, i32** %6, align 8
  store i32 5242880, i32* %7, align 4
  %10 = call i32 @RtlZeroMemory(i32** getelementptr inbounds ([1024 x i32*], [1024 x i32*]* @StressTesting.bases, i64 0, i64 0), i32 8192)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %54, %1
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @RTL_NUMBER_OF(i32** getelementptr inbounds ([1024 x i32*], [1024 x i32*]* @StressTesting.bases, i64 0, i64 0))
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @NT_SUCCESS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %57

21:                                               ; preds = %19
  %22 = call i32 (...) @NtCurrentProcess()
  %23 = load i64, i64* %2, align 8
  %24 = load i32, i32* @PAGE_READWRITE, align 4
  %25 = call i32 @ZwAllocateVirtualMemory(i32 %22, i32** %6, i32 0, i32* %7, i64 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds [1024 x i32*], [1024 x i32*]* @StressTesting.bases, i64 0, i64 %27
  store i32* %26, i32** %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = urem i64 %29, 10
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %21
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @MEM_COMMIT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @NT_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @TestString, align 4
  %43 = load i32, i32* @TestStringSize, align 4
  %44 = load i32, i32* @STATUS_SUCCESS, align 4
  %45 = call i32 @CheckBufferReadWrite(i32* %41, i32 %42, i32 %43, i32 %44)
  br label %52

46:                                               ; preds = %36, %32
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @TestString, align 4
  %49 = load i32, i32* @TestStringSize, align 4
  %50 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %51 = call i32 @CheckBufferReadWrite(i32* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %21
  store i32* null, i32** %6, align 8
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %11

57:                                               ; preds = %19
  %58 = load i32, i32* %3, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @trace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %59)
  %61 = load i32, i32* %3, align 4
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %73, %57
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @NT_SUCCESS(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @RTL_NUMBER_OF(i32** getelementptr inbounds ([1024 x i32*], [1024 x i32*]* @StressTesting.bases, i64 0, i64 0))
  %70 = icmp ult i64 %68, %69
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ false, %63 ], [ %70, %67 ]
  br i1 %72, label %73, label %82

73:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  %74 = call i32 (...) @NtCurrentProcess()
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds [1024 x i32*], [1024 x i32*]* @StressTesting.bases, i64 0, i64 %75
  %77 = load i32, i32* @MEM_RELEASE, align 4
  %78 = call i32 @ZwFreeVirtualMemory(i32 %74, i32** %76, i32* %7, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %5, align 8
  %81 = getelementptr inbounds [1024 x i32*], [1024 x i32*]* @StressTesting.bases, i64 0, i64 %79
  store i32* null, i32** %81, align 8
  br label %63

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @RtlZeroMemory(i32**, i32) #1

declare dso_local i64 @RTL_NUMBER_OF(i32**) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ZwAllocateVirtualMemory(i32, i32**, i32, i32*, i64, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @CheckBufferReadWrite(i32*, i32, i32, i32) #1

declare dso_local i32 @trace(i8*, i32, i64) #1

declare dso_local i32 @ZwFreeVirtualMemory(i32, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
