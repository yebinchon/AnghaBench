; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_strm_time_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_strm_time_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"now\00", align 1
@time_now = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@time_time = common dso_local global i32 0, align 4
@ns_time = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@time_plus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@time_minus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@time_str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@time_num = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@time_year = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@time_month = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@time_day = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@time_hour = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"minute\00", align 1
@time_min = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@time_sec = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"nanosecond\00", align 1
@time_nanosec = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"weekday\00", align 1
@time_weekday = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_time_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @time_now, align 4
  %5 = call i32 @strm_cfunc_value(i32 %4)
  %6 = call i32 @strm_var_def(i32* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @time_time, align 4
  %9 = call i32 @strm_cfunc_value(i32 %8)
  %10 = call i32 @strm_var_def(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = call i32* @strm_ns_new(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** @ns_time, align 8
  %12 = load i32*, i32** @ns_time, align 8
  %13 = load i32, i32* @time_plus, align 4
  %14 = call i32 @strm_cfunc_value(i32 %13)
  %15 = call i32 @strm_var_def(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** @ns_time, align 8
  %17 = load i32, i32* @time_minus, align 4
  %18 = call i32 @strm_cfunc_value(i32 %17)
  %19 = call i32 @strm_var_def(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** @ns_time, align 8
  %21 = load i32, i32* @time_str, align 4
  %22 = call i32 @strm_cfunc_value(i32 %21)
  %23 = call i32 @strm_var_def(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** @ns_time, align 8
  %25 = load i32, i32* @time_num, align 4
  %26 = call i32 @strm_cfunc_value(i32 %25)
  %27 = call i32 @strm_var_def(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** @ns_time, align 8
  %29 = load i32, i32* @time_year, align 4
  %30 = call i32 @strm_cfunc_value(i32 %29)
  %31 = call i32 @strm_var_def(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** @ns_time, align 8
  %33 = load i32, i32* @time_month, align 4
  %34 = call i32 @strm_cfunc_value(i32 %33)
  %35 = call i32 @strm_var_def(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** @ns_time, align 8
  %37 = load i32, i32* @time_day, align 4
  %38 = call i32 @strm_cfunc_value(i32 %37)
  %39 = call i32 @strm_var_def(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** @ns_time, align 8
  %41 = load i32, i32* @time_hour, align 4
  %42 = call i32 @strm_cfunc_value(i32 %41)
  %43 = call i32 @strm_var_def(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** @ns_time, align 8
  %45 = load i32, i32* @time_min, align 4
  %46 = call i32 @strm_cfunc_value(i32 %45)
  %47 = call i32 @strm_var_def(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** @ns_time, align 8
  %49 = load i32, i32* @time_sec, align 4
  %50 = call i32 @strm_cfunc_value(i32 %49)
  %51 = call i32 @strm_var_def(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** @ns_time, align 8
  %53 = load i32, i32* @time_nanosec, align 4
  %54 = call i32 @strm_cfunc_value(i32 %53)
  %55 = call i32 @strm_var_def(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** @ns_time, align 8
  %57 = load i32, i32* @time_weekday, align 4
  %58 = call i32 @strm_cfunc_value(i32 %57)
  %59 = call i32 @strm_var_def(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %58)
  ret void
}

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

declare dso_local i32* @strm_ns_new(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
