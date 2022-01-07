; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtAllocateVirtualMemory.c_CheckSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtAllocateVirtualMemory.c_CheckSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NtAllocateVirtualMemory failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Got back wrong base address: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Alloc of 0x%Ix: got back wrong size: 0x%Ix, expected 0x%Ix\0A\00", align 1
@MEM_RELEASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"NtFreeVirtualMemory failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckSize(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %10, align 8
  %14 = call i32 (...) @NtCurrentProcess()
  %15 = load i32, i32* @MEM_RESERVE, align 4
  %16 = load i32, i32* @PAGE_NOACCESS, align 4
  %17 = call i32 @NtAllocateVirtualMemory(i32 %14, i64* %9, i32 0, i64* %10, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @NT_SUCCESS(i32 %18)
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, -65536
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %9, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %33, i64 %34, i64 %35)
  %37 = call i32 (...) @NtCurrentProcess()
  %38 = load i32, i32* @MEM_RELEASE, align 4
  %39 = call i32 @NtFreeVirtualMemory(i32 %37, i64* %9, i64* %10, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @NT_SUCCESS(i32 %40)
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @NtAllocateVirtualMemory(i32, i64*, i32, i64*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtFreeVirtualMemory(i32, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
