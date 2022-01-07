; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDetermineDosPathNameType.c_AllocateGuarded.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDetermineDosPathNameType.c_AllocateGuarded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@MEM_RELEASE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Status = %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @AllocateGuarded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AllocateGuarded(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @PAGE_ROUND_UP(i64 %10)
  store i64 %11, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %12 = call i32 (...) @NtCurrentProcess()
  %13 = load i32, i32* @MEM_RESERVE, align 4
  %14 = load i32, i32* @PAGE_NOACCESS, align 4
  %15 = call i64 @NtAllocateVirtualMemory(i32 %12, i32** %6, i32 0, i64* %5, i32 %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @NT_SUCCESS(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %53

20:                                               ; preds = %1
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %22, %21
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = call i32 (...) @NtCurrentProcess()
  %28 = load i32, i32* @MEM_COMMIT, align 4
  %29 = load i32, i32* @PAGE_READWRITE, align 4
  %30 = call i64 @NtAllocateVirtualMemory(i32 %27, i32** %6, i32 0, i64* %5, i32 %28, i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @NT_SUCCESS(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  %35 = call i32 (...) @NtCurrentProcess()
  %36 = load i32, i32* @MEM_RELEASE, align 4
  %37 = call i64 @NtFreeVirtualMemory(i32 %35, i32** %6, i64* %5, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @STATUS_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %42)
  store i32* null, i32** %2, align 8
  br label %53

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %3, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  store i32* %52, i32** %2, align 8
  br label %53

53:                                               ; preds = %45, %34, %19
  %54 = load i32*, i32** %2, align 8
  ret i32* %54
}

declare dso_local i64 @PAGE_ROUND_UP(i64) #1

declare dso_local i64 @NtAllocateVirtualMemory(i32, i32**, i32, i64*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @NtFreeVirtualMemory(i32, i32**, i64*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
