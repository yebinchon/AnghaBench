; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiCall.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Called\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Irp->UserEvent = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"IoCallDriver: %08x\0A\00", align 1
@STATUS_PENDING = common dso_local global i64 0, align 8
@MAX_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Waiting on transport.\0A\00", align 1
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Status (0x%X).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i32*, %struct.TYPE_7__*)* @TdiCall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TdiCall(%struct.TYPE_6__* %0, i32 %1, i32* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %10 = load i32, i32* @MID_TRACE, align 4
  %11 = call i32 @AFD_DbgPrint(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MID_TRACE, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @AFD_DbgPrint(i32 %12, i8* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i64 @IoCallDriver(i32 %19, %struct.TYPE_6__* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* @MID_TRACE, align 4
  %23 = load i64, i64* %9, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @AFD_DbgPrint(i32 %22, i8* %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @STATUS_PENDING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %4
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* @MAX_TRACE, align 4
  %34 = call i32 @AFD_DbgPrint(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @Executive, align 4
  %37 = load i32, i32* @KernelMode, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @KeWaitForSingleObject(i32* %35, i32 %36, i32 %37, i32 %38, i32* null)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %32, %29, %4
  %44 = load i32, i32* @MAX_TRACE, align 4
  %45 = load i64, i64* %9, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @AFD_DbgPrint(i32 %44, i8* %46)
  %48 = load i64, i64* %9, align 8
  ret i64 %48
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i64 @IoCallDriver(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
