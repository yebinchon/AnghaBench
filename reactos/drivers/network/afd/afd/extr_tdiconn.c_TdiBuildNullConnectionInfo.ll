; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdiconn.c_TdiBuildNullConnectionInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdiconn.c_TdiBuildNullConnectionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_AFD_TDI_CONNECTION_INFORMATION = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiBuildNullConnectionInfo(i32** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @TaLengthOfTransportAddressByType(i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MIN_TRACE, align 4
  %15 = call i32 @AFD_DbgPrint(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32**, i32*** %4, align 8
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* @NonPagedPool, align 4
  %20 = load i64, i64* %7, align 8
  %21 = add i64 4, %20
  %22 = load i32, i32* @TAG_AFD_TDI_CONNECTION_INFORMATION, align 4
  %23 = call i64 @ExAllocatePoolWithTag(i32 %19, i64 %21, i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32**, i32*** %4, align 8
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @TdiBuildNullConnectionInfoInPlace(i32* %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @NT_SUCCESS(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @TAG_AFD_TDI_CONNECTION_INFORMATION, align 4
  %40 = call i32 @ExFreePoolWithTag(i32* %38, i32 %39)
  store i32* null, i32** %6, align 8
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32*, i32** %6, align 8
  %43 = load i32**, i32*** %4, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %27, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @TaLengthOfTransportAddressByType(i64) #1

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i64 @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @TdiBuildNullConnectionInfoInPlace(i32*, i64) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
