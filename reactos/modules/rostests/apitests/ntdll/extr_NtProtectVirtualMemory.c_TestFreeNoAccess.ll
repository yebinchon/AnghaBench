; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtProtectVirtualMemory.c_TestFreeNoAccess.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtProtectVirtualMemory.c_TestFreeNoAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[%lu, %lu] Got non-zero memory. %x at %p\0A\00", align 1
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@MEM_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestFreeNoAccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestFreeNoAccess() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %67, %0
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 50000
  br i1 %10, label %11, label %70

11:                                               ; preds = %8
  store i32* null, i32** %1, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = mul nsw i32 16, %12
  store i32 %13, i32* %2, align 4
  %14 = call i32 (...) @NtCurrentProcess()
  %15 = load i32, i32* @MEM_COMMIT, align 4
  %16 = load i32, i32* @PAGE_READWRITE, align 4
  %17 = call i32 @NtAllocateVirtualMemory(i32 %14, i32** %1, i32 0, i32* %2, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @STATUS_SUCCESS, align 4
  %20 = call i32 @ok_ntstatus(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @NT_SUCCESS(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  br label %70

25:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load i32*, i32** %1, align 8
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32*, i32** %6, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %44, i32* %45)
  %47 = load i32*, i32** %6, align 8
  store i32 123, i32* %47, align 4
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %26

51:                                               ; preds = %26
  %52 = call i32 (...) @NtCurrentProcess()
  %53 = load i32, i32* @PAGE_NOACCESS, align 4
  %54 = call i32 @NtProtectVirtualMemory(i32 %52, i32** %1, i32* %2, i32 %53, i32* %7)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  %57 = call i32 @ok_ntstatus(i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PAGE_READWRITE, align 4
  %60 = call i32 @ok_hex(i32 %58, i32 %59)
  store i32 0, i32* %2, align 4
  %61 = call i32 (...) @NtCurrentProcess()
  %62 = load i32, i32* @MEM_RELEASE, align 4
  %63 = call i32 @NtFreeVirtualMemory(i32 %61, i32** %1, i32* %2, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  %66 = call i32 @ok_ntstatus(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %8

70:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @NtAllocateVirtualMemory(i32, i32**, i32, i32*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @ok_ntstatus(i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @NtProtectVirtualMemory(i32, i32**, i32*, i32, i32*) #1

declare dso_local i32 @ok_hex(i32, i32) #1

declare dso_local i32 @NtFreeVirtualMemory(i32, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
