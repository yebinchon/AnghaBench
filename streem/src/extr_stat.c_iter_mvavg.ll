; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_iter_mvavg.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_iter_mvavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.mvavg_data* }
%struct.mvavg_data = type { i64, double*, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"number required\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @iter_mvavg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_mvavg(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvavg_data*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.mvavg_data*, %struct.mvavg_data** %14, align 8
  store %struct.mvavg_data* %15, %struct.mvavg_data** %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %16 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %17 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %20 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %27 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @convert_number(%struct.TYPE_6__* %24, i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @strm_number_p(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = call i32 @strm_raise(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @STRM_NG, align 4
  store i32 %37, i32* %3, align 4
  br label %126

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = call double @strm_value_float(i32 %39)
  %41 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %42 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %41, i32 0, i32 1
  %43 = load double*, double** %42, align 8
  %44 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %45 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = getelementptr inbounds double, double* %43, i64 %46
  store double %40, double* %48, align 8
  %49 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %50 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %53 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %38
  %57 = load i32, i32* @TRUE, align 4
  %58 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %59 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %61 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %38
  %63 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %64 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = call i32 (...) @strm_nil_value()
  %70 = call i32 @strm_emit(%struct.TYPE_6__* %68, i32 %69, i32* null)
  %71 = load i32, i32* @STRM_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %126

72:                                               ; preds = %62
  store i64 0, i64* %9, align 8
  br label %73

73:                                               ; preds = %110, %72
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %79 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %78, i32 0, i32 1
  %80 = load double*, double** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds double, double* %80, i64 %81
  %83 = load double, double* %82, align 8
  store double %83, double* %11, align 8
  %84 = load double, double* %7, align 8
  %85 = load double, double* %11, align 8
  %86 = fadd double %84, %85
  store double %86, double* %12, align 8
  %87 = load double, double* %7, align 8
  %88 = call i64 @fabs(double %87)
  %89 = load double, double* %11, align 8
  %90 = call i64 @fabs(double %89)
  %91 = icmp sge i64 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %77
  %93 = load double, double* %7, align 8
  %94 = load double, double* %12, align 8
  %95 = fsub double %93, %94
  %96 = load double, double* %11, align 8
  %97 = fadd double %95, %96
  %98 = load double, double* %8, align 8
  %99 = fadd double %98, %97
  store double %99, double* %8, align 8
  br label %108

100:                                              ; preds = %77
  %101 = load double, double* %11, align 8
  %102 = load double, double* %12, align 8
  %103 = fsub double %101, %102
  %104 = load double, double* %7, align 8
  %105 = fadd double %103, %104
  %106 = load double, double* %8, align 8
  %107 = fadd double %106, %105
  store double %107, double* %8, align 8
  br label %108

108:                                              ; preds = %100, %92
  %109 = load double, double* %12, align 8
  store double %109, double* %7, align 8
  br label %110

110:                                              ; preds = %108
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %73

113:                                              ; preds = %73
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = load double, double* %7, align 8
  %116 = load double, double* %8, align 8
  %117 = fadd double %115, %116
  %118 = load %struct.mvavg_data*, %struct.mvavg_data** %6, align 8
  %119 = getelementptr inbounds %struct.mvavg_data, %struct.mvavg_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = uitofp i64 %120 to double
  %122 = fdiv double %117, %121
  %123 = call i32 @strm_float_value(double %122)
  %124 = call i32 @strm_emit(%struct.TYPE_6__* %114, i32 %123, i32* null)
  %125 = load i32, i32* @STRM_OK, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %113, %67, %34
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @convert_number(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local i32 @strm_raise(%struct.TYPE_6__*, i8*) #1

declare dso_local double @strm_value_float(i32) #1

declare dso_local i32 @strm_emit(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @strm_float_value(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
