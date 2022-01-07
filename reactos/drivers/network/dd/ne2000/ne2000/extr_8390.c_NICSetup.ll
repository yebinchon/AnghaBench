; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICSetup.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i64, i64 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@PG0_DCR = common dso_local global i64 0, align 8
@DCR_WTS = common dso_local global i32 0, align 4
@DCR_LS = common dso_local global i32 0, align 4
@DCR_FT10 = common dso_local global i32 0, align 4
@PG0_RBCR0 = common dso_local global i64 0, align 8
@PG0_RBCR1 = common dso_local global i64 0, align 8
@PG0_RCR = common dso_local global i64 0, align 8
@RCR_MON = common dso_local global i32 0, align 4
@PG0_TCR = common dso_local global i64 0, align 8
@TCR_LOOP = common dso_local global i32 0, align 4
@PG0_BNRY = common dso_local global i64 0, align 8
@PG0_PSTART = common dso_local global i64 0, align 8
@PG0_PSTOP = common dso_local global i64 0, align 8
@PG0_CR = common dso_local global i64 0, align 8
@CR_STP = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE1 = common dso_local global i32 0, align 4
@PG1_CURR = common dso_local global i64 0, align 8
@CR_PAGE0 = common dso_local global i32 0, align 4
@PG0_ISR = common dso_local global i64 0, align 8
@PG0_IMR = common dso_local global i64 0, align 8
@CR_STA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Leaving.\0A\00", align 1
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NICSetup(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load i32, i32* @MAX_TRACE, align 4
  %4 = call i32 @NDIS_DbgPrint(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 9
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PG0_DCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @DCR_WTS, align 4
  %16 = load i32, i32* @DCR_LS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DCR_FT10, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @NdisRawWritePortUchar(i64 %14, i32 %19)
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PG0_DCR, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @DCR_LS, align 4
  %28 = load i32, i32* @DCR_FT10, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @NdisRawWritePortUchar(i64 %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %9
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PG0_RBCR0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @NdisRawWritePortUchar(i64 %36, i32 0)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PG0_RBCR1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @NdisRawWritePortUchar(i64 %42, i32 0)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PG0_RCR, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @RCR_MON, align 4
  %50 = call i32 @NdisRawWritePortUchar(i64 %48, i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PG0_TCR, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* @TCR_LOOP, align 4
  %57 = call i32 @NdisRawWritePortUchar(i64 %55, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PG0_BNRY, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @NdisRawWritePortUchar(i64 %62, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PG0_PSTART, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NdisRawWritePortUchar(i64 %71, i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PG0_PSTOP, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @NdisRawWritePortUchar(i64 %80, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = call i32 @NICSetPhysicalAddress(%struct.TYPE_5__* %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = call i32 @NICSetMulticastAddressMask(%struct.TYPE_5__* %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PG0_CR, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* @CR_STP, align 4
  %95 = load i32, i32* @CR_RD2, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CR_PAGE1, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @NdisRawWritePortUchar(i64 %93, i32 %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PG1_CURR, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @NdisRawWritePortUchar(i64 %104, i32 %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PG0_CR, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i32, i32* @CR_STP, align 4
  %116 = load i32, i32* @CR_RD2, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CR_PAGE0, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @NdisRawWritePortUchar(i64 %114, i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PG0_ISR, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @NdisRawWritePortUchar(i64 %125, i32 255)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PG0_IMR, align 8
  %131 = add nsw i64 %129, %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @NdisRawWritePortUchar(i64 %131, i32 %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PG0_CR, align 8
  %140 = add nsw i64 %138, %139
  %141 = load i32, i32* @CR_STA, align 4
  %142 = load i32, i32* @CR_RD2, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @CR_PAGE0, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @NdisRawWritePortUchar(i64 %140, i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i8*, i8** @FALSE, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 7
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** @FALSE, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 6
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @FALSE, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @MAX_TRACE, align 4
  %169 = call i32 @NDIS_DbgPrint(i32 %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %170 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  ret i32 %170
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NICSetPhysicalAddress(%struct.TYPE_5__*) #1

declare dso_local i32 @NICSetMulticastAddressMask(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
