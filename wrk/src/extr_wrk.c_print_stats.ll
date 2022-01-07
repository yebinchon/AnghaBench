; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_wrk.c_print_stats.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_wrk.c_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { x86_fp80 }

@.str = private unnamed_addr constant [10 x i8] c"    %-10s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%8.2Lf%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i8* (x86_fp80)*)* @print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stats(i8* %0, %struct.TYPE_6__* %1, i8* (x86_fp80)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8* (x86_fp80)*, align 8
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* (x86_fp80)* %2, i8* (x86_fp80)** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load x86_fp80, x86_fp80* %11, align 16
  store x86_fp80 %12, x86_fp80* %7, align 16
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call x86_fp80 @stats_mean(%struct.TYPE_6__* %13)
  store x86_fp80 %14, x86_fp80* %8, align 16
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load x86_fp80, x86_fp80* %8, align 16
  %17 = call x86_fp80 @stats_stdev(%struct.TYPE_6__* %15, x86_fp80 %16)
  store x86_fp80 %17, x86_fp80* %9, align 16
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load x86_fp80, x86_fp80* %8, align 16
  %21 = load i8* (x86_fp80)*, i8* (x86_fp80)** %6, align 8
  %22 = call i32 @print_units(x86_fp80 %20, i8* (x86_fp80)* %21, i32 8)
  %23 = load x86_fp80, x86_fp80* %9, align 16
  %24 = load i8* (x86_fp80)*, i8* (x86_fp80)** %6, align 8
  %25 = call i32 @print_units(x86_fp80 %23, i8* (x86_fp80)* %24, i32 10)
  %26 = load x86_fp80, x86_fp80* %7, align 16
  %27 = load i8* (x86_fp80)*, i8* (x86_fp80)** %6, align 8
  %28 = call i32 @print_units(x86_fp80 %26, i8* (x86_fp80)* %27, i32 9)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load x86_fp80, x86_fp80* %8, align 16
  %31 = load x86_fp80, x86_fp80* %9, align 16
  %32 = call i8* @stats_within_stdev(%struct.TYPE_6__* %29, x86_fp80 %30, x86_fp80 %31, i32 1)
  %33 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  ret void
}

declare dso_local x86_fp80 @stats_mean(%struct.TYPE_6__*) #1

declare dso_local x86_fp80 @stats_stdev(%struct.TYPE_6__*, x86_fp80) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @print_units(x86_fp80, i8* (x86_fp80)*, i32) #1

declare dso_local i8* @stats_within_stdev(%struct.TYPE_6__*, x86_fp80, x86_fp80, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
