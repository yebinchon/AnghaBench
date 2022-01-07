; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICReadSAPROM.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICReadSAPROM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64*, i32 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@PG0_RBCR0 = common dso_local global i64 0, align 8
@PG0_RBCR1 = common dso_local global i64 0, align 8
@PG0_RSAR0 = common dso_local global i64 0, align 8
@PG0_RSAR1 = common dso_local global i64 0, align 8
@PG0_CR = common dso_local global i64 0, align 8
@CR_STA = common dso_local global i32 0, align 4
@CR_RD0 = common dso_local global i32 0, align 4
@CR_PAGE0 = common dso_local global i32 0, align 4
@NIC_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"NE2000 or compatible network adapter found.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@DRIVER_LENGTH_OF_ADDRESS = common dso_local global i32 0, align 4
@PG0_DCR = common dso_local global i64 0, align 8
@DCR_WTS = common dso_local global i32 0, align 4
@DCR_LS = common dso_local global i32 0, align 4
@DCR_FT10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"NE1000 or compatible network adapter found.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @NICReadSAPROM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @NICReadSAPROM(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i64], align 16
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load i32, i32* @MAX_TRACE, align 4
  %8 = call i32 @NDIS_DbgPrint(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PG0_RBCR0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @NdisRawWritePortUchar(i64 %13, i32 32)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PG0_RBCR1, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @NdisRawWritePortUchar(i64 %19, i32 0)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PG0_RSAR0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @NdisRawWritePortUchar(i64 %25, i32 0)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PG0_RSAR1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @NdisRawWritePortUchar(i64 %31, i32 0)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PG0_CR, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @CR_STA, align 4
  %39 = load i32, i32* @CR_RD0, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CR_PAGE0, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @NdisRawWritePortUchar(i64 %37, i32 %42)
  store i64 2, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %79, %1
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 32
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NIC_DATA, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %54
  %56 = call i32 @NdisRawReadPortUchar(i64 %52, i64* %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NIC_DATA, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %64
  %66 = call i32 @NdisRawReadPortUchar(i64 %61, i64* %65)
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %47
  store i64 1, i64* %6, align 8
  br label %78

78:                                               ; preds = %77, %47
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %4, align 4
  br label %44

82:                                               ; preds = %44
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %83, 2
  br i1 %84, label %85, label %130

85:                                               ; preds = %82
  %86 = load i32, i32* @MAX_TRACE, align 4
  %87 = call i32 @NDIS_DbgPrint(i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i8*, i8** @TRUE, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %106, %85
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 16
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = mul nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %99, i64* %105, align 8
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %91

109:                                              ; preds = %91
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = ptrtoint i32* %111 to i32
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = ptrtoint i64** %114 to i32
  %116 = load i32, i32* @DRIVER_LENGTH_OF_ADDRESS, align 4
  %117 = call i32 @NdisMoveMemory(i32 %112, i32 %115, i32 %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PG0_DCR, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i32, i32* @DCR_WTS, align 4
  %124 = load i32, i32* @DCR_LS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @DCR_FT10, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @NdisRawWritePortUchar(i64 %122, i32 %127)
  %129 = load i8*, i8** @TRUE, align 8
  store i8* %129, i8** %2, align 8
  br label %137

130:                                              ; preds = %82
  %131 = load i32, i32* @MAX_TRACE, align 4
  %132 = call i32 @NDIS_DbgPrint(i32 %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i8*, i8** @FALSE, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @FALSE, align 8
  store i8* %136, i8** %2, align 8
  br label %137

137:                                              ; preds = %130, %109
  %138 = load i8*, i8** %2, align 8
  ret i8* %138
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i64*) #1

declare dso_local i32 @NdisMoveMemory(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
