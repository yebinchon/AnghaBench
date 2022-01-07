; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDetermineDosPathNameType.c_MakeReadOnly.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDetermineDosPathNameType.c_MakeReadOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@MEM_RELEASE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Status = %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @MakeReadOnly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeReadOnly(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @PAGE_ROUND_UP(i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @PAGE_ROUND_DOWN(i64 %11)
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = call i32 (...) @NtCurrentProcess()
  %18 = load i32, i32* @MEM_COMMIT, align 4
  %19 = load i32, i32* @PAGE_READWRITE, align 4
  %20 = call i64 @NtAllocateVirtualMemory(i32 %17, i64* %8, i32 0, i64* %7, i32 %18, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @NT_SUCCESS(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  %25 = call i32 (...) @NtCurrentProcess()
  %26 = load i32, i32* @MEM_RELEASE, align 4
  %27 = call i64 @NtFreeVirtualMemory(i32 %25, i64* %8, i64* %7, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @STATUS_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %24, %16
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @PAGE_ROUND_UP(i64) #1

declare dso_local i32 @PAGE_ROUND_DOWN(i64) #1

declare dso_local i64 @NtAllocateVirtualMemory(i32, i64*, i32, i64*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @NtFreeVirtualMemory(i32, i64*, i64*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
