; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_Scan_Next_DVBC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_Scan_Next_DVBC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@SCAN_MODULATION_QAM_64 = common dso_local global i32 0, align 4
@SCAN_MODULATION_QAM_256 = common dso_local global i32 0, align 4
@Scan_Next_DVBC.symbolrates = internal constant [3 x i16] [i16 6900, i16 6875, i16 6950], align 2
@Scan_Next_DVBC.frequencies = internal constant [150 x i32] [i32 41000, i32 39400, i32 40200, i32 38600, i32 41800, i32 36200, i32 44200, i32 43400, i32 37000, i32 35400, i32 42600, i32 37800, i32 34600, i32 45800, i32 45000, i32 46600, i32 32200, i32 51400, i32 49000, i32 33800, i32 31400, i32 30600, i32 47400, i32 71400, i32 69000, i32 68200, i32 58600, i32 56200, i32 54600, i32 49800, i32 48200, i32 33000, i32 79400, i32 72200, i32 69800, i32 67400, i32 66600, i32 65000, i32 64200, i32 61000, i32 55400, i32 53000, i32 52200, i32 50600, i32 29800, i32 16200, i32 15400, i32 11300, i32 78600, i32 77000, i32 76200, i32 75400, i32 74600, i32 73800, i32 73000, i32 70600, i32 57800, i32 57000, i32 53800, i32 12100, i32 81000, i32 77800, i32 65800, i32 63400, i32 61800, i32 29000, i32 17000, i32 85000, i32 84200, i32 83400, i32 81800, i32 80200, i32 59400, i32 36900, i32 28300, i32 26600, i32 25800, i32 25000, i32 24200, i32 23400, i32 85800, i32 74800, i32 73200, i32 72800, i32 72400, i32 72000, i32 66000, i32 65600, i32 60200, i32 42500, i32 41700, i32 40900, i32 40100, i32 39300, i32 38500, i32 37775, i32 37700, i32 37200, i32 36100, i32 35600, i32 35300, i32 34700, i32 34500, i32 33900, i32 33700, i32 32900, i32 32300, i32 32100, i32 31500, i32 31300, i32 30500, i32 29900, i32 29700, i32 29100, i32 28950, i32 28200, i32 28000, i32 27500, i32 27400, i32 27200, i32 26700, i32 25900, i32 25500, i32 25100, i32 24300, i32 24100, i32 23500, i32 23200, i32 22700, i32 22600, i32 21900, i32 21800, i32 21100, i32 20300, i32 19500, i32 18700, i32 17900, i32 17100, i32 16300, i32 15500, i32 14700, i32 14600, i32 14500, i32 14300, i32 13900, i32 13700, i32 13100, i32 12900, i32 12500, i32 12300], align 16
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_10__*, double*)* @Scan_Next_DVBC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Scan_Next_DVBC(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_10__* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store double* %3, double** %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCAN_MODULATION_QAM_64, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load i32, i32* @SCAN_MODULATION_QAM_256, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %32

31:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %27
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 3
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46, %43
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i16], [3 x i16]* @Scan_Next_DVBC.symbolrates, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = mul nsw i32 1000, %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %55
  br label %79

72:                                               ; preds = %33
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %71
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = load double*, double** %9, align 8
  %89 = call i32 @Scan_Next_DVB_SpectrumExhaustive(%struct.TYPE_11__* %85, %struct.TYPE_12__* %86, %struct.TYPE_10__* %87, double* %88)
  store i32 %89, i32* %5, align 4
  br label %134

90:                                               ; preds = %79
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 150
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %96, i32* %5, align 4
  br label %134

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [150 x i32], [150 x i32]* @Scan_Next_DVBC.frequencies, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul i32 10000, %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 1000
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 100
  %115 = add nsw i32 %110, %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 4
  %120 = sub nsw i32 256, %119
  %121 = add nsw i32 %115, %120
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %122, 1.509160e+05
  %124 = load double*, double** %9, align 8
  store double %123, double* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %97
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %97
  %133 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %95, %84
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @Scan_Next_DVB_SpectrumExhaustive(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_10__*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
