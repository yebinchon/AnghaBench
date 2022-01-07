; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiDisconnect.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Bad transport object.\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@MID_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Called(TransportObject %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Bad device object.\0A\00", align 1
@TDI_DISCONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Insufficient resources.\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiDisconnect(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = load i32, i32* @MIN_TRACE, align 4
  %23 = call i32 @AFD_DbgPrint(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %24, i32* %9, align 4
  br label %69

25:                                               ; preds = %8
  %26 = load i32, i32* @MID_TRACE, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @AFD_DbgPrint(i32 %26, i8* %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @IoGetRelatedDeviceObject(i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @MIN_TRACE, align 4
  %37 = call i32 @AFD_DbgPrint(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %38, i32* %9, align 4
  br label %69

39:                                               ; preds = %25
  %40 = load i32, i32* @TDI_DISCONNECT, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @TdiBuildInternalDeviceControlIrp(i32 %40, i32 %41, i32 %42, i32* null, i32* null)
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @MIN_TRACE, align 4
  %50 = call i32 @AFD_DbgPrint(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %51, i32* %9, align 4
  br label %69

52:                                               ; preds = %39
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @TdiBuildDisconnect(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @TdiCall(i32 %65, i32 %66, i32* null, i32* null)
  %68 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %52, %48, %35, %21
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @IoGetRelatedDeviceObject(i32) #1

declare dso_local i32 @TdiBuildInternalDeviceControlIrp(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @TdiBuildDisconnect(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TdiCall(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
