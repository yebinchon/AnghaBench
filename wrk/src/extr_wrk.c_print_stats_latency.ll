; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_wrk.c_print_stats_latency.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_wrk.c_print_stats_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"  Latency Distribution\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%7.0Lf%%\00", align 1
@format_time_us = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_stats_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stats_latency(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x x86_fp80], align 16
  %4 = alloca i64, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = bitcast [4 x x86_fp80]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false)
  %8 = bitcast i8* %7 to [4 x x86_fp80]*
  %9 = getelementptr inbounds [4 x x86_fp80], [4 x x86_fp80]* %8, i32 0, i32 0
  store x86_fp80 0xK4004C800000000000000, x86_fp80* %9, align 16
  %10 = getelementptr inbounds [4 x x86_fp80], [4 x x86_fp80]* %8, i32 0, i32 1
  store x86_fp80 0xK40059600000000000000, x86_fp80* %10, align 16
  %11 = getelementptr inbounds [4 x x86_fp80], [4 x x86_fp80]* %8, i32 0, i32 2
  store x86_fp80 0xK4005B400000000000000, x86_fp80* %11, align 16
  %12 = getelementptr inbounds [4 x x86_fp80], [4 x x86_fp80]* %8, i32 0, i32 3
  store x86_fp80 0xK4005C600000000000000, x86_fp80* %12, align 16
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds [4 x x86_fp80], [4 x x86_fp80]* %3, i64 0, i64 %18
  %20 = load x86_fp80, x86_fp80* %19, align 16
  store x86_fp80 %20, x86_fp80* %5, align 16
  %21 = load i32*, i32** %2, align 8
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = call i32 @stats_percentile(i32* %21, x86_fp80 %22)
  store i32 %23, i32* %6, align 4
  %24 = load x86_fp80, x86_fp80* %5, align 16
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), x86_fp80 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @format_time_us, align 4
  %28 = call i32 @print_units(i32 %26, i32 %27, i32 10)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %14

33:                                               ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @stats_percentile(i32*, x86_fp80) #2

declare dso_local i32 @print_units(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
