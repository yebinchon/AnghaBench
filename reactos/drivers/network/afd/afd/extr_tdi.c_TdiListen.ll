; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiListen.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiListen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Called\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Bad connection object.\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Bad device object.\0A\00", align 1
@TDI_LISTEN = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiListen(i32** %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @MAX_TRACE, align 4
  %16 = call i32 @AFD_DbgPrint(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @MIN_TRACE, align 4
  %26 = call i32 @AFD_DbgPrint(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %27, i32* %7, align 4
  br label %65

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @IoGetRelatedDeviceObject(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @MIN_TRACE, align 4
  %35 = call i32 @AFD_DbgPrint(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %36, i32* %7, align 4
  br label %65

37:                                               ; preds = %28
  %38 = load i32, i32* @TDI_LISTEN, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32* @TdiBuildInternalDeviceControlIrp(i32 %38, i32 %39, i32 %40, i32* null, i32* null)
  %42 = load i32**, i32*** %8, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32**, i32*** %8, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %47, i32* %7, align 4
  br label %65

48:                                               ; preds = %37
  %49 = load i32**, i32*** %8, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @TdiBuildListen(i32* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 0, i32 %56, i32 %58)
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @TdiCall(i32* %61, i32 %62, i32* null, i32* null)
  %64 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %48, %46, %33, %24
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IoGetRelatedDeviceObject(i32) #1

declare dso_local i32* @TdiBuildInternalDeviceControlIrp(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @TdiBuildListen(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TdiCall(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
