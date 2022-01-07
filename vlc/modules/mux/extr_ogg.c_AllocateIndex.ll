; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_AllocateIndex.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_AllocateIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, double }
%struct.TYPE_20__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@VIDEO_ES = common dso_local global i64 0, align 8
@CLOCK_FREQ = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [53 x i8] c"No stream length, using default allocation for index\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"allocating %zu bytes for index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)* @AllocateIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateIndex(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %7, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %101

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VIDEO_ES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %23
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @VLC_TICK_FROM_SEC(i32 10)
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %44, %49
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %50, %55
  %57 = call i32 @__MAX(i32 %43, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %42, %35, %23
  store i64 0, i64* %11, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @samples_from_vlc_tick(i32 %66, i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %77, %65
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %73

80:                                               ; preds = %73
  br label %82

81:                                               ; preds = %58
  store i64 3, i64* %11, align 8
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %88, %82
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %11, align 8
  br label %84

91:                                               ; preds = %84
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sdiv i32 %95, %96
  %98 = add nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = mul i64 %92, %99
  store i64 %100, i64* %8, align 8
  br label %120

101:                                              ; preds = %2
  %102 = call double @INT64_C(i32 3600)
  %103 = fmul double %102, 1.120000e+01
  %104 = load double, double* @CLOCK_FREQ, align 8
  %105 = fmul double %103, %104
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %105, %110
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load double, double* %114, align 8
  %116 = fmul double %111, %115
  %117 = fptoui double %116 to i64
  store i64 %117, i64* %8, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Dbg(%struct.TYPE_18__* %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %101, %91
  %121 = load i64, i64* %8, align 8
  %122 = uitofp i64 %121 to double
  %123 = fmul double %122, 0x3FF2492492492492
  %124 = fptoui double %123 to i64
  store i64 %124, i64* %8, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Dbg(%struct.TYPE_18__* %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @calloc(i64 %128, i32 4)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %147

139:                                              ; preds = %120
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  store i32 1, i32* %3, align 4
  br label %147

147:                                              ; preds = %139, %138
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @samples_from_vlc_tick(i32, i32) #1

declare dso_local double @INT64_C(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @calloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
