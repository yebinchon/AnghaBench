; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/datalink/extr_lan.c_GetPacketTypeFromHeaderBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/datalink/extr_lan.c_GetPacketTypeFromHeaderBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@DEBUG_DATALINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Runt frame (size %d).\0A\00", align 1
@NDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unsupported media.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"EtherType (0x%X).\0A\00", align 1
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetPacketTypeFromHeaderBuffer(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @DEBUG_DATALINK, align 4
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @TI_DbgPrint(i32 %18, i8* %20)
  %22 = load i32, i32* @NDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %32 [
    i32 128, label %27
  ]

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @MIN_TRACE, align 4
  %34 = call i32 @TI_DbgPrint(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @NDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %35, i32* %5, align 4
  br label %44

36:                                               ; preds = %27
  %37 = load i32, i32* @DEBUG_DATALINK, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @TI_DbgPrint(i32 %37, i8* %41)
  %43 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %32, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
