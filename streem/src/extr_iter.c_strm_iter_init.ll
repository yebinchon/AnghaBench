; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_strm_iter_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_strm_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@exec_seq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@exec_repeat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@exec_cycle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"each\00", align 1
@exec_each = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@exec_map = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"flatmap\00", align 1
@exec_flatmap = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@exec_filter = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@exec_count = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@exec_min = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@exec_max = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@exec_reduce = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"reduce_by_key\00", align 1
@exec_rbk = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@exec_slice = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"consec\00", align 1
@exec_consec = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"take\00", align 1
@exec_take = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@exec_drop = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@exec_uniq = common dso_local global i32 0, align 4
@strm_ns_array = common dso_local global i32* null, align 8
@ary_each = common dso_local global i32 0, align 4
@ary_map = common dso_local global i32 0, align 4
@ary_flatmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_iter_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @exec_seq, align 4
  %5 = call i32 @strm_cfunc_value(i32 %4)
  %6 = call i32 @strm_var_def(i32* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @exec_repeat, align 4
  %9 = call i32 @strm_cfunc_value(i32 %8)
  %10 = call i32 @strm_var_def(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @exec_cycle, align 4
  %13 = call i32 @strm_cfunc_value(i32 %12)
  %14 = call i32 @strm_var_def(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @exec_each, align 4
  %17 = call i32 @strm_cfunc_value(i32 %16)
  %18 = call i32 @strm_var_def(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @exec_map, align 4
  %21 = call i32 @strm_cfunc_value(i32 %20)
  %22 = call i32 @strm_var_def(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @exec_flatmap, align 4
  %25 = call i32 @strm_cfunc_value(i32 %24)
  %26 = call i32 @strm_var_def(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @exec_filter, align 4
  %29 = call i32 @strm_cfunc_value(i32 %28)
  %30 = call i32 @strm_var_def(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @exec_count, align 4
  %33 = call i32 @strm_cfunc_value(i32 %32)
  %34 = call i32 @strm_var_def(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @exec_min, align 4
  %37 = call i32 @strm_cfunc_value(i32 %36)
  %38 = call i32 @strm_var_def(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @exec_max, align 4
  %41 = call i32 @strm_cfunc_value(i32 %40)
  %42 = call i32 @strm_var_def(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @exec_reduce, align 4
  %45 = call i32 @strm_cfunc_value(i32 %44)
  %46 = call i32 @strm_var_def(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @exec_rbk, align 4
  %49 = call i32 @strm_cfunc_value(i32 %48)
  %50 = call i32 @strm_var_def(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @exec_slice, align 4
  %53 = call i32 @strm_cfunc_value(i32 %52)
  %54 = call i32 @strm_var_def(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @exec_consec, align 4
  %57 = call i32 @strm_cfunc_value(i32 %56)
  %58 = call i32 @strm_var_def(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @exec_take, align 4
  %61 = call i32 @strm_cfunc_value(i32 %60)
  %62 = call i32 @strm_var_def(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @exec_drop, align 4
  %65 = call i32 @strm_cfunc_value(i32 %64)
  %66 = call i32 @strm_var_def(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @exec_uniq, align 4
  %69 = call i32 @strm_cfunc_value(i32 %68)
  %70 = call i32 @strm_var_def(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** @strm_ns_array, align 8
  %72 = load i32, i32* @ary_each, align 4
  %73 = call i32 @strm_cfunc_value(i32 %72)
  %74 = call i32 @strm_var_def(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** @strm_ns_array, align 8
  %76 = load i32, i32* @ary_map, align 4
  %77 = call i32 @strm_cfunc_value(i32 %76)
  %78 = call i32 @strm_var_def(i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** @strm_ns_array, align 8
  %80 = load i32, i32* @ary_flatmap, align 4
  %81 = call i32 @strm_cfunc_value(i32 %80)
  %82 = call i32 @strm_var_def(i32* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @strm_stat_init(i32* %83)
  ret void
}

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

declare dso_local i32 @strm_stat_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
