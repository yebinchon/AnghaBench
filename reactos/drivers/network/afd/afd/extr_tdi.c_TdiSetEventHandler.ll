; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiSetEventHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiSetEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Called\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad file object.\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Bad device object.\0A\00", align 1
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TDI_SET_EVENT_HANDLER = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiSetEventHandler(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @MAX_TRACE, align 4
  %15 = call i32 @AFD_DbgPrint(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @MIN_TRACE, align 4
  %20 = call i32 @AFD_DbgPrint(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %21, i32* %5, align 4
  br label %54

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @IoGetRelatedDeviceObject(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @MIN_TRACE, align 4
  %29 = call i32 @AFD_DbgPrint(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %30, i32* %5, align 4
  br label %54

31:                                               ; preds = %22
  %32 = load i32, i32* @NotificationEvent, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @KeInitializeEvent(i32* %12, i32 %32, i32 %33)
  %35 = load i32, i32* @TDI_SET_EVENT_HANDLER, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @TdiBuildInternalDeviceControlIrp(i32 %35, i32 %36, i32 %37, i32* %12, i32* %11)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %42, i32* %5, align 4
  br label %54

43:                                               ; preds = %31
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @TdiBuildSetEventHandler(i32 %44, i32 %45, i32 %46, i32* null, i32* null, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @TdiCall(i32 %51, i32 %52, i32* %12, i32* %11)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %43, %41, %27, %18
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @IoGetRelatedDeviceObject(i32) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @TdiBuildInternalDeviceControlIrp(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @TdiBuildSetEventHandler(i32, i32, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @TdiCall(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
