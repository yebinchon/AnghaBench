; ModuleID = '/home/carl/AnghaBench/streem/src/extr_graph.c_iter_bar.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_graph.c_iter_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.bar_data* }
%struct.bar_data = type { double*, i64, i32, double, i64 }

@interrupt = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@sigupdate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"invalid data\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@winch = common dso_local global i8* null, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @iter_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_bar(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bar_data*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.bar_data*, %struct.bar_data** %11, align 8
  store %struct.bar_data* %12, %struct.bar_data** %6, align 8
  store double 1.000000e+00, double* %8, align 8
  %13 = load i8*, i8** @interrupt, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** @interrupt, align 8
  %17 = load i32, i32* @SIGINT, align 4
  %18 = load i32, i32* @sigupdate, align 4
  %19 = call i32 @strm_unsignal(i32 %17, i32 %18)
  %20 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %21 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @move_cursor(i64 %23, i32 1)
  %25 = call i32 (...) @show_cursor()
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @strm_number_p(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = call i32 @strm_raise(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @STRM_NG, align 4
  store i32 %34, i32* %3, align 4
  br label %111

35:                                               ; preds = %27
  %36 = load i8*, i8** @winch, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** @winch, align 8
  %40 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %41 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %40, i32 0, i32 0
  %42 = load double*, double** %41, align 8
  %43 = call i32 @free(double* %42)
  %44 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %45 = call i32 @init_bar(%struct.bar_data* %44)
  %46 = load i32, i32* @STRM_NG, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = call i32 @strm_stream_close(%struct.TYPE_5__* %49)
  %51 = load i32, i32* @STRM_NG, align 4
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %5, align 4
  %55 = call double @strm_value_float(i32 %54)
  store double %55, double* %7, align 8
  %56 = load double, double* %7, align 8
  %57 = fcmp olt double %56, 0.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store double 0.000000e+00, double* %7, align 8
  br label %59

59:                                               ; preds = %58, %53
  %60 = load double, double* %7, align 8
  %61 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %62 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %61, i32 0, i32 0
  %63 = load double*, double** %62, align 8
  %64 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %65 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds double, double* %63, i64 %66
  store double %60, double* %68, align 8
  store double 1.000000e+00, double* %8, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %89, %59
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %72 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %77 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %76, i32 0, i32 0
  %78 = load double*, double** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  store double %82, double* %7, align 8
  %83 = load double, double* %7, align 8
  %84 = load double, double* %8, align 8
  %85 = fcmp ogt double %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load double, double* %7, align 8
  store double %87, double* %8, align 8
  br label %88

88:                                               ; preds = %86, %75
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %69

92:                                               ; preds = %69
  %93 = load double, double* %8, align 8
  %94 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %95 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %94, i32 0, i32 3
  store double %93, double* %95, align 8
  %96 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %97 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %100 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %98, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %106 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %92
  %108 = load %struct.bar_data*, %struct.bar_data** %6, align 8
  %109 = call i32 @show_graph(%struct.bar_data* %108)
  %110 = load i32, i32* @STRM_OK, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %48, %31
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @strm_unsignal(i32, i32) #1

declare dso_local i32 @move_cursor(i64, i32) #1

declare dso_local i32 @show_cursor(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local i32 @strm_raise(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @free(double*) #1

declare dso_local i32 @init_bar(%struct.bar_data*) #1

declare dso_local i32 @strm_stream_close(%struct.TYPE_5__*) #1

declare dso_local double @strm_value_float(i32) #1

declare dso_local i32 @show_graph(%struct.bar_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
