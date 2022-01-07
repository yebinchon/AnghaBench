; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiQueryInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiQueryInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Bad file object.\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Bad device object.\0A\00", align 1
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TDI_QUERY_INFORMATION = common dso_local global i32 0, align 4
@ConnectionObject = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiQueryInformation(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @MIN_TRACE, align 4
  %16 = call i32 @AFD_DbgPrint(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @IoGetRelatedDeviceObject(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @MIN_TRACE, align 4
  %25 = call i32 @AFD_DbgPrint(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %18
  %28 = load i32, i32* @NotificationEvent, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @KeInitializeEvent(i32* %10, i32 %28, i32 %29)
  %31 = load i32, i32* @TDI_QUERY_INFORMATION, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ConnectionObject, align 4
  %34 = call i32 @TdiBuildInternalDeviceControlIrp(i32 %31, i32 %32, i32 %33, i32* %10, i32* %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @TdiBuildQueryInformation(i32 %40, i32 %41, i32 %42, i32* null, i32* null, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @TdiCall(i32 %46, i32 %47, i32* %10, i32* %9)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %37, %23, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @IoGetRelatedDeviceObject(i32) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @TdiBuildInternalDeviceControlIrp(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @TdiBuildQueryInformation(i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @TdiCall(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
