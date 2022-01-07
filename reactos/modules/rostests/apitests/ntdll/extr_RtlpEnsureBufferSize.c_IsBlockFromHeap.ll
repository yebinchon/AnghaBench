; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlpEnsureBufferSize.c_IsBlockFromHeap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlpEnsureBufferSize.c_IsBlockFromHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@TH32CS_SNAPHEAPLIST = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PROCESS_HEAP_ENTRY_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*)* @IsBlockFromHeap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IsBlockFromHeap(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @TH32CS_SNAPHEAPLIST, align 4
  %11 = call i32 (...) @GetCurrentProcessId()
  %12 = call i64 @CreateToolhelp32Snapshot(i32 %10, i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %3, align 8
  br label %56

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 24, i32* %19, align 8
  %20 = call i32 (...) @GetCurrentProcessId()
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @Heap32First(%struct.TYPE_7__* %6, i32 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32*, i32** %5, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %35, %37
  %39 = icmp sle i64 %33, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %40, %31, %25
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = call i64 @Heap32Next(%struct.TYPE_7__* %6)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %25, label %51

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @CloseHandle(i64 %53)
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %52, %16
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @CreateToolhelp32Snapshot(i32, i32) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i64 @Heap32First(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i64 @Heap32Next(%struct.TYPE_7__*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
