; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtAllocateVirtualMemory.c_Free.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtAllocateVirtualMemory.c_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@CurrentAllocation = common dso_local global i64 0, align 8
@Allocations = common dso_local global i32** null, align 8
@MEM_RELEASE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Free(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to i64*
  %12 = getelementptr inbounds i64, i64* %11, i64 -2
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to i64*
  %16 = getelementptr inbounds i64, i64* %15, i64 -1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = srem i64 %32, %33
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @RtlFillMemory(i32* %38, i64 %39, i32 190)
  %41 = load i32*, i32** %3, align 8
  %42 = bitcast i32* %41 to i64*
  %43 = getelementptr inbounds i64, i64* %42, i64 -1
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = bitcast i32* %44 to i64*
  %46 = getelementptr inbounds i64, i64* %45, i64 -2
  store i64 4210818301, i64* %46, align 8
  store i64 0, i64* %9, align 8
  br label %47

47:                                               ; preds = %63, %1
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @CurrentAllocation, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32**, i32*** @Allocations, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32**, i32*** @Allocations, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  store i32* null, i32** %61, align 8
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %47

66:                                               ; preds = %58, %47
  %67 = call i32 (...) @ValidateAllocations()
  %68 = call i32 (...) @NtCurrentProcess()
  %69 = load i32, i32* @MEM_RELEASE, align 4
  %70 = call i64 @NtFreeVirtualMemory(i32 %68, i32** %5, i64* %6, i32 %69)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @STATUS_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlFillMemory(i32*, i64, i32) #1

declare dso_local i32 @ValidateAllocations(...) #1

declare dso_local i64 @NtFreeVirtualMemory(i32, i32**, i64*, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
