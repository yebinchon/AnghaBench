; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICStop.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@PG0_CR = common dso_local global i64 0, align 8
@CR_STP = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE0 = common dso_local global i32 0, align 4
@PG0_RBCR0 = common dso_local global i64 0, align 8
@PG0_ISR = common dso_local global i64 0, align 8
@ISR_RST = common dso_local global i32 0, align 4
@PG0_RCR = common dso_local global i64 0, align 8
@RCR_MON = common dso_local global i32 0, align 4
@PG0_TCR = common dso_local global i64 0, align 8
@TCR_LOOP = common dso_local global i32 0, align 4
@CR_STA = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NICStop(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @MAX_TRACE, align 4
  %6 = call i32 @NDIS_DbgPrint(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PG0_CR, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* @CR_STP, align 4
  %13 = load i32, i32* @CR_RD2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CR_PAGE0, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @NdisRawWritePortUchar(i64 %11, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PG0_RBCR0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @NdisRawWritePortUchar(i64 %22, i32 0)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PG0_RBCR0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @NdisRawWritePortUchar(i64 %28, i32 0)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %47, %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PG0_ISR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @NdisRawReadPortUchar(i64 %38, i32* %3)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ISR_RST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %50

45:                                               ; preds = %33
  %46 = call i32 @NdisStallExecution(i32 500)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %30

50:                                               ; preds = %44, %30
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PG0_RCR, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* @RCR_MON, align 4
  %57 = call i32 @NdisRawWritePortUchar(i64 %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PG0_TCR, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @TCR_LOOP, align 4
  %64 = call i32 @NdisRawWritePortUchar(i64 %62, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PG0_CR, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* @CR_STA, align 4
  %71 = load i32, i32* @CR_RD2, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @NdisRawWritePortUchar(i64 %69, i32 %72)
  %74 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  ret i32 %74
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i32*) #1

declare dso_local i32 @NdisStallExecution(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
