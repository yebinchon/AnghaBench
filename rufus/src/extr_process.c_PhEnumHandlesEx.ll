; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_process.c_PhEnumHandlesEx.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_process.c_PhEnumHandlesEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PhEnumHandlesEx.initialBufferSize = internal global i32 65536, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@NtQuerySystemInformation = common dso_local global i32 0, align 4
@Ntdll = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@SystemExtendedHandleInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@PH_LARGE_BUFFER_SIZE = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PhEnumHandlesEx(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %7 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @NtQuerySystemInformation, align 4
  %9 = load i32, i32* @Ntdll, align 4
  %10 = call i32 @PF_INIT_OR_SET_STATUS(i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @NT_SUCCESS(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  %17 = load i32, i32* @PhEnumHandlesEx.initialBufferSize, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @PhAllocate(i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %23, i32* %2, align 4
  br label %68

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* @SystemExtendedHandleInformation, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pfNtQuerySystemInformation(i32 %26, i32* %27, i32 %28, i32* null)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PhFree(i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PH_LARGE_BUFFER_SIZE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %41, i32* %2, align 4
  br label %68

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @PhAllocate(i32 %43)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %42
  br label %25

50:                                               ; preds = %25
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @NT_SUCCESS(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @PhFree(i32* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %59, 2097152
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* @PhEnumHandlesEx.initialBufferSize, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32*, i32** %5, align 8
  %65 = ptrtoint i32* %64 to i64
  %66 = load i64*, i64** %3, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %54, %47, %40, %22, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @PF_INIT_OR_SET_STATUS(i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32* @PhAllocate(i32) #1

declare dso_local i32 @pfNtQuerySystemInformation(i32, i32*, i32, i32*) #1

declare dso_local i32 @PhFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
