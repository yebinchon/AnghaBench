; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash.c_geohashEncode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash.c_geohashEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double }
%struct.TYPE_8__ = type { i32, i32 }

@GEO_LONG_MAX = common dso_local global double 0.000000e+00, align 8
@GEO_LONG_MIN = common dso_local global double 0.000000e+00, align 8
@GEO_LAT_MAX = common dso_local global double 0.000000e+00, align 8
@GEO_LAT_MIN = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geohashEncode(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, double %2, double %3, i32 %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = icmp sgt i32 %19, 32
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = call i64 @RANGEPISZERO(%struct.TYPE_7__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = call i64 @RANGEPISZERO(%struct.TYPE_7__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %21, %18, %6
  store i32 0, i32* %7, align 4
  br label %124

33:                                               ; preds = %28
  %34 = load double, double* %10, align 8
  %35 = load double, double* @GEO_LONG_MAX, align 8
  %36 = fcmp ogt double %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load double, double* %10, align 8
  %39 = load double, double* @GEO_LONG_MIN, align 8
  %40 = fcmp olt double %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load double, double* %11, align 8
  %43 = load double, double* @GEO_LAT_MAX, align 8
  %44 = fcmp ogt double %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load double, double* %11, align 8
  %47 = load double, double* @GEO_LAT_MIN, align 8
  %48 = fcmp olt double %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %37, %33
  store i32 0, i32* %7, align 4
  br label %124

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load double, double* %11, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = fcmp olt double %56, %59
  br i1 %60, label %79, label %61

61:                                               ; preds = %50
  %62 = load double, double* %11, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = fcmp ogt double %62, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load double, double* %10, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = fcmp olt double %68, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load double, double* %10, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = fcmp ogt double %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %67, %61, %50
  store i32 0, i32* %7, align 4
  br label %124

80:                                               ; preds = %73
  %81 = load double, double* %11, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fsub double %81, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load double, double* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load double, double* %90, align 8
  %92 = fsub double %88, %91
  %93 = fdiv double %85, %92
  store double %93, double* %14, align 8
  %94 = load double, double* %10, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load double, double* %96, align 8
  %98 = fsub double %94, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load double, double* %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = fsub double %101, %104
  %106 = fdiv double %98, %105
  store double %106, double* %15, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = shl i64 1, %108
  %110 = uitofp i64 %109 to double
  %111 = load double, double* %14, align 8
  %112 = fmul double %111, %110
  store double %112, double* %14, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 1, %114
  %116 = uitofp i64 %115 to double
  %117 = load double, double* %15, align 8
  %118 = fmul double %117, %116
  store double %118, double* %15, align 8
  %119 = load double, double* %14, align 8
  %120 = load double, double* %15, align 8
  %121 = call i32 @interleave64(double %119, double %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %80, %79, %49, %32
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i64 @RANGEPISZERO(%struct.TYPE_7__*) #1

declare dso_local i32 @interleave64(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
