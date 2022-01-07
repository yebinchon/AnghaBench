; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICInitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@NIC_RESET = common dso_local global i64 0, align 8
@PG0_CR = common dso_local global i64 0, align 8
@CR_STP = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE0 = common dso_local global i32 0, align 4
@PG0_DCR = common dso_local global i64 0, align 8
@DCR_LS = common dso_local global i32 0, align 4
@DCR_FT10 = common dso_local global i32 0, align 4
@PG0_RBCR0 = common dso_local global i64 0, align 8
@PG0_RBCR1 = common dso_local global i64 0, align 8
@PG0_RCR = common dso_local global i64 0, align 8
@RCR_MON = common dso_local global i32 0, align 4
@PG0_TCR = common dso_local global i64 0, align 8
@TCR_LOOP = common dso_local global i32 0, align 4
@NDIS_STATUS_ADAPTER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Station address is (%02X %02X %02X %02X %02X %02X).\0A\00", align 1
@CR_STA = common dso_local global i32 0, align 4
@PG0_ISR = common dso_local global i64 0, align 8
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NICInitialize(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load i32, i32* @MID_TRACE, align 4
  %6 = call i32 @NDIS_DbgPrint(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NIC_RESET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @NdisRawReadPortUchar(i64 %11, i32* %4)
  %13 = call i32 @NdisStallExecution(i32 1600)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NIC_RESET, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @NdisRawWritePortUchar(i64 %18, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PG0_CR, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @CR_STP, align 4
  %27 = load i32, i32* @CR_RD2, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CR_PAGE0, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @NdisRawWritePortUchar(i64 %25, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PG0_DCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @DCR_LS, align 4
  %38 = load i32, i32* @DCR_FT10, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @NdisRawWritePortUchar(i64 %36, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PG0_RBCR0, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @NdisRawWritePortUchar(i64 %45, i32 0)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PG0_RBCR1, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @NdisRawWritePortUchar(i64 %51, i32 0)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PG0_RCR, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* @RCR_MON, align 4
  %59 = call i32 @NdisRawWritePortUchar(i64 %57, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PG0_TCR, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @TCR_LOOP, align 4
  %66 = call i32 @NdisRawWritePortUchar(i64 %64, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = call i32 @NICReadSAPROM(%struct.TYPE_5__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %1
  %71 = load i32, i32* @NDIS_STATUS_ADAPTER_NOT_FOUND, align 4
  store i32 %71, i32* %2, align 4
  br label %127

72:                                               ; preds = %1
  %73 = load i32, i32* @MID_TRACE, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @NDIS_DbgPrint(i32 %73, i8* %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PG0_CR, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* @CR_STA, align 4
  %113 = load i32, i32* @CR_RD2, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @CR_PAGE0, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @NdisRawWritePortUchar(i64 %111, i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PG0_ISR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @NdisRawWritePortUchar(i64 %122, i32 255)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = call i32 @NICTestRAM(%struct.TYPE_5__* %124)
  %126 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %72, %70
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i32*) #1

declare dso_local i32 @NdisStallExecution(i32) #1

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NICReadSAPROM(%struct.TYPE_5__*) #1

declare dso_local i32 @NICTestRAM(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
