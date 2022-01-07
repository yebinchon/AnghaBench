; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICReadDataAlign.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICReadDataAlign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@PG0_CR = common dso_local global i64 0, align 8
@CR_STA = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE0 = common dso_local global i32 0, align 4
@PG0_RSAR0 = common dso_local global i64 0, align 8
@PG0_RSAR1 = common dso_local global i64 0, align 8
@PG0_RBCR0 = common dso_local global i64 0, align 8
@PG0_RBCR1 = common dso_local global i64 0, align 8
@CR_RD0 = common dso_local global i32 0, align 4
@NIC_DATA = common dso_local global i64 0, align 8
@PG0_ISR = common dso_local global i64 0, align 8
@ISR_RDC = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NICReadDataAlign(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PG0_CR, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @CR_STA, align 4
  %19 = load i32, i32* @CR_RD2, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CR_PAGE0, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @NdisRawWritePortUchar(i64 %17, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PG0_RSAR0, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @NdisRawWritePortUchar(i64 %28, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PG0_RSAR1, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 8
  %39 = call i32 @NdisRawWritePortUchar(i64 %36, i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PG0_RBCR0, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @NdisRawWritePortUchar(i64 %44, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PG0_RBCR1, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @NdisRawWritePortUchar(i64 %52, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PG0_CR, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @CR_STA, align 4
  %62 = load i32, i32* @CR_RD0, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CR_PAGE0, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @NdisRawWritePortUchar(i64 %60, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NIC_DATA, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %78, 1
  %80 = call i32 @NdisRawReadPortBufferUshort(i64 %76, i32 %77, i32 %79)
  br label %90

81:                                               ; preds = %4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NIC_DATA, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @NdisRawReadPortBufferUchar(i64 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %71
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %108, %90
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 65535
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PG0_ISR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @NdisRawReadPortUchar(i64 %99, i32* %10)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ISR_RDC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %111

106:                                              ; preds = %94
  %107 = call i32 @NdisStallExecution(i32 4)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %91

111:                                              ; preds = %105, %91
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PG0_ISR, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* @ISR_RDC, align 4
  %118 = call i32 @NdisRawWritePortUchar(i64 %116, i32 %117)
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NdisRawReadPortBufferUshort(i64, i32, i32) #1

declare dso_local i32 @NdisRawReadPortBufferUchar(i64, i32, i32) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i32*) #1

declare dso_local i32 @NdisStallExecution(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
