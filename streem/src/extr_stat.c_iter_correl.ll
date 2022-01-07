; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_iter_correl.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_iter_correl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.correl_data* }
%struct.correl_data = type { double, double, double, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid data\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"correl() requires [num, num]\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @iter_correl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_correl(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.correl_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.correl_data*, %struct.correl_data** %11, align 8
  store %struct.correl_data* %12, %struct.correl_data** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @strm_array_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @strm_ary_len(i32 %17)
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = call i32 @strm_raise(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @STRM_NG, align 4
  store i32 %23, i32* %3, align 4
  br label %136

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call i32* @strm_ary_ptr(i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strm_number_p(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strm_number_p(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32, %24
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @strm_raise(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @STRM_NG, align 4
  store i32 %41, i32* %3, align 4
  br label %136

42:                                               ; preds = %32
  %43 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %44 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = fadd double %45, 1.000000e+00
  store double %46, double* %44, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call double @strm_value_float(i32 %49)
  %51 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %52 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = fsub double %50, %53
  store double %54, double* %8, align 8
  %55 = load double, double* %8, align 8
  %56 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %57 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fdiv double %55, %58
  %60 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %61 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  %63 = fadd double %62, %59
  store double %63, double* %61, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call double @strm_value_float(i32 %66)
  %68 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %69 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %68, i32 0, i32 2
  %70 = load double, double* %69, align 8
  %71 = fsub double %67, %70
  store double %71, double* %9, align 8
  %72 = load double, double* %9, align 8
  %73 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %74 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fdiv double %72, %75
  %77 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %78 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %77, i32 0, i32 2
  %79 = load double, double* %78, align 8
  %80 = fadd double %79, %76
  store double %80, double* %78, align 8
  %81 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %82 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %81, i32 0, i32 0
  %83 = load double, double* %82, align 8
  %84 = fsub double %83, 1.000000e+00
  %85 = load double, double* %8, align 8
  %86 = fmul double %84, %85
  %87 = load double, double* %8, align 8
  %88 = fmul double %86, %87
  %89 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %90 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %89, i32 0, i32 0
  %91 = load double, double* %90, align 8
  %92 = fdiv double %88, %91
  %93 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %94 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sitofp i32 %95 to double
  %97 = fadd double %96, %92
  %98 = fptosi double %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %100 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = fsub double %101, 1.000000e+00
  %103 = load double, double* %9, align 8
  %104 = fmul double %102, %103
  %105 = load double, double* %9, align 8
  %106 = fmul double %104, %105
  %107 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %108 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %107, i32 0, i32 0
  %109 = load double, double* %108, align 8
  %110 = fdiv double %106, %109
  %111 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %112 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to double
  %115 = fadd double %114, %110
  %116 = fptosi double %115 to i32
  store i32 %116, i32* %112, align 4
  %117 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %118 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %117, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = fsub double %119, 1.000000e+00
  %121 = load double, double* %8, align 8
  %122 = fmul double %120, %121
  %123 = load double, double* %9, align 8
  %124 = fmul double %122, %123
  %125 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %126 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %125, i32 0, i32 0
  %127 = load double, double* %126, align 8
  %128 = fdiv double %124, %127
  %129 = load %struct.correl_data*, %struct.correl_data** %6, align 8
  %130 = getelementptr inbounds %struct.correl_data, %struct.correl_data* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = sitofp i32 %131 to double
  %133 = fadd double %132, %128
  %134 = fptosi double %133 to i32
  store i32 %134, i32* %130, align 8
  %135 = load i32, i32* @STRM_OK, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %42, %38, %20
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @strm_array_p(i32) #1

declare dso_local i32 @strm_ary_len(i32) #1

declare dso_local i32 @strm_raise(%struct.TYPE_4__*, i8*) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local double @strm_value_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
