; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICIndicatePacket.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICIndicatePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@DRIVER_HEADER_SIZE = common dso_local global i32 0, align 4
@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Indicating (%d) bytes.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ne2000!NICIndicatePacket: Indicating (%d) bytes.\0A\00", align 1
@MAX_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Adapter->MiniportAdapterHandle: %x\0A\00", align 1
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @NICIndicatePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NICIndicatePacket(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = icmp slt i64 %8, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  br label %28

28:                                               ; preds = %21, %16
  %29 = phi i64 [ %20, %16 ], [ %27, %21 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = ptrtoint i32** %33 to i32
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @NICReadData(%struct.TYPE_6__* %31, i32 %34, i64 %38, i32 %41)
  %43 = load i32, i32* @MID_TRACE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @NDIS_DbgPrint(i32 %43, i8* %46)
  %48 = load i32, i32* @MID_TRACE, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @NDIS_DbgPrint(i32 %48, i8* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %28
  %57 = load i32, i32* @MAX_TRACE, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @NDIS_DbgPrint(i32 %57, i8* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = bitcast i32** %68 to i32*
  %70 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @DRIVER_HEADER_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @NdisMEthIndicateReceive(i32 %66, i32* null, i32* %69, i32 %70, i32* %76, i32 %79, i32 %87)
  br label %98

89:                                               ; preds = %28
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = bitcast i32** %94 to i32*
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @NdisMEthIndicateReceive(i32 %92, i32* null, i32* %95, i32 %96, i32* null, i32 0, i32 0)
  br label %98

98:                                               ; preds = %89, %56
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @NICReadData(%struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisMEthIndicateReceive(i32, i32*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
