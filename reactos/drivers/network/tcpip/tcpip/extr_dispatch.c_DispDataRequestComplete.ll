; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_dispatch.c_DispDataRequestComplete.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_dispatch.c_DispDataRequestComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@DEBUG_IRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Called for irp %x (%x, %d).\0A\00", align 1
@MID_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Irp->IoStatus.Status = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Irp->IoStatus.Information = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Completing IRP at (0x%X).\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Done Completing IRP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DispDataRequestComplete(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %8, align 8
  %10 = load i32, i32* @DEBUG_IRP, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @TI_DbgPrint(i32 %10, i8* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @MID_TRACE, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @TI_DbgPrint(i32 %25, i8* %31)
  %33 = load i32, i32* @MID_TRACE, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @TI_DbgPrint(i32 %33, i8* %39)
  %41 = load i32, i32* @DEBUG_IRP, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = bitcast %struct.TYPE_7__* %42 to i8*
  %44 = call i32 @TI_DbgPrint(i32 %41, i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @IRPFinish(%struct.TYPE_7__* %45, i32 %46)
  %48 = load i32, i32* @DEBUG_IRP, align 4
  %49 = call i32 @TI_DbgPrint(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @IRPFinish(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
