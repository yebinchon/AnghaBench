; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_strm_stat_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_strm_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@exec_sum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@exec_avg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"moving_average\00", align 1
@exec_mvavg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"rolling_mean\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"stdev\00", align 1
@exec_stdev = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"variance\00", align 1
@exec_variance = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"mean_stdev\00", align 1
@exec_mean_stdev = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"mean_variance\00", align 1
@exec_mean_variance = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"correl\00", align 1
@exec_correl = common dso_local global i32 0, align 4
@strm_ns_array = common dso_local global i32* null, align 8
@ary_sum = common dso_local global i32 0, align 4
@ary_avg = common dso_local global i32 0, align 4
@ary_stdev = common dso_local global i32 0, align 4
@ary_var = common dso_local global i32 0, align 4
@ary_correl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_stat_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @exec_sum, align 4
  %5 = call i32 @strm_cfunc_value(i32 %4)
  %6 = call i32 @strm_var_def(i32* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @exec_avg, align 4
  %9 = call i32 @strm_cfunc_value(i32 %8)
  %10 = call i32 @strm_var_def(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @exec_avg, align 4
  %13 = call i32 @strm_cfunc_value(i32 %12)
  %14 = call i32 @strm_var_def(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @exec_mvavg, align 4
  %17 = call i32 @strm_cfunc_value(i32 %16)
  %18 = call i32 @strm_var_def(i32* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @exec_mvavg, align 4
  %21 = call i32 @strm_cfunc_value(i32 %20)
  %22 = call i32 @strm_var_def(i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @exec_stdev, align 4
  %25 = call i32 @strm_cfunc_value(i32 %24)
  %26 = call i32 @strm_var_def(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @exec_variance, align 4
  %29 = call i32 @strm_cfunc_value(i32 %28)
  %30 = call i32 @strm_var_def(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @exec_mean_stdev, align 4
  %33 = call i32 @strm_cfunc_value(i32 %32)
  %34 = call i32 @strm_var_def(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @exec_mean_variance, align 4
  %37 = call i32 @strm_cfunc_value(i32 %36)
  %38 = call i32 @strm_var_def(i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @exec_correl, align 4
  %41 = call i32 @strm_cfunc_value(i32 %40)
  %42 = call i32 @strm_var_def(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** @strm_ns_array, align 8
  %44 = load i32, i32* @ary_sum, align 4
  %45 = call i32 @strm_cfunc_value(i32 %44)
  %46 = call i32 @strm_var_def(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** @strm_ns_array, align 8
  %48 = load i32, i32* @ary_avg, align 4
  %49 = call i32 @strm_cfunc_value(i32 %48)
  %50 = call i32 @strm_var_def(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** @strm_ns_array, align 8
  %52 = load i32, i32* @ary_stdev, align 4
  %53 = call i32 @strm_cfunc_value(i32 %52)
  %54 = call i32 @strm_var_def(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** @strm_ns_array, align 8
  %56 = load i32, i32* @ary_var, align 4
  %57 = call i32 @strm_cfunc_value(i32 %56)
  %58 = call i32 @strm_var_def(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** @strm_ns_array, align 8
  %60 = load i32, i32* @ary_correl, align 4
  %61 = call i32 @strm_cfunc_value(i32 %60)
  %62 = call i32 @strm_var_def(i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @strm_rand_init(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @strm_sort_init(i32* %65)
  ret void
}

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

declare dso_local i32 @strm_rand_init(i32*) #1

declare dso_local i32 @strm_sort_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
