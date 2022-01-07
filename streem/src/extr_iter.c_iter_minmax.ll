; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_iter_minmax.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_iter_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.minmax_data* }
%struct.minmax_data = type { double, i8*, i64, i64, i32 }

@STRM_NG = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @iter_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_minmax(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.minmax_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.minmax_data*, %struct.minmax_data** %10, align 8
  store %struct.minmax_data* %11, %struct.minmax_data** %6, align 8
  %12 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %13 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strm_nil_p(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %20 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @strm_funcall(%struct.TYPE_4__* %18, i32 %21, i32 1, i8** %5, i8** %7)
  %23 = load i64, i64* @STRM_NG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i64, i64* @STRM_NG, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %84

28:                                               ; preds = %17
  br label %31

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i8*, i8** %7, align 8
  %33 = call double @strm_value_float(i8* %32)
  store double %33, double* %8, align 8
  %34 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %35 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i64, i64* @FALSE, align 8
  %40 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %41 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load double, double* %8, align 8
  %43 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %44 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %43, i32 0, i32 0
  store double %42, double* %44, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %47 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %82

48:                                               ; preds = %31
  %49 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %50 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %55 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = load double, double* %8, align 8
  %58 = fcmp ogt double %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load double, double* %8, align 8
  %61 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %62 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %61, i32 0, i32 0
  store double %60, double* %62, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %65 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %59, %53
  br label %81

67:                                               ; preds = %48
  %68 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %69 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = load double, double* %8, align 8
  %72 = fcmp olt double %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load double, double* %8, align 8
  %75 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %76 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %75, i32 0, i32 0
  store double %74, double* %76, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.minmax_data*, %struct.minmax_data** %6, align 8
  %79 = getelementptr inbounds %struct.minmax_data, %struct.minmax_data* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %73, %67
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %38
  %83 = load i32, i32* @STRM_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @strm_nil_p(i32) #1

declare dso_local i64 @strm_funcall(%struct.TYPE_4__*, i32, i32, i8**, i8**) #1

declare dso_local double @strm_value_float(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
