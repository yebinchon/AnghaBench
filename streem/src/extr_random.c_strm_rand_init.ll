; ModuleID = '/home/carl/AnghaBench/streem/src/extr_random.c_strm_rand_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_random.c_strm_rand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"rand_seed\00", align 1
@rand_seed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@exec_rand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rand_norm\00", align 1
@exec_rnorm = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@exec_sample = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_rand_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @rand_seed, align 4
  %5 = call i32 @strm_cfunc_value(i32 %4)
  %6 = call i32 @strm_var_def(i32* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @exec_rand, align 4
  %9 = call i32 @strm_cfunc_value(i32 %8)
  %10 = call i32 @strm_var_def(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @exec_rnorm, align 4
  %13 = call i32 @strm_cfunc_value(i32 %12)
  %14 = call i32 @strm_var_def(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @exec_sample, align 4
  %17 = call i32 @strm_cfunc_value(i32 %16)
  %18 = call i32 @strm_var_def(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  ret void
}

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
