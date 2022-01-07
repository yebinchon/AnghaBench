; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_get_output_flags.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_get_output_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_all = common dso_local global i32 0, align 4
@OUTPUT_SHOW_ALL = common dso_local global i32 0, align 4
@arg_full = common dso_local global i64 0, align 8
@OUTPUT_FULL_WIDTH = common dso_local global i32 0, align 4
@OUTPUT_COLOR = common dso_local global i32 0, align 4
@arg_quiet = common dso_local global i32 0, align 4
@OUTPUT_WARN_CUTOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_output_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_output_flags() #0 {
  %1 = load i32, i32* @arg_all, align 4
  %2 = load i32, i32* @OUTPUT_SHOW_ALL, align 4
  %3 = mul nsw i32 %1, %2
  %4 = load i64, i64* @arg_full, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @on_tty()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i64 (...) @pager_have()
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %9, %6, %0
  %13 = phi i1 [ true, %6 ], [ true, %0 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @OUTPUT_FULL_WIDTH, align 4
  %16 = mul nsw i32 %14, %15
  %17 = or i32 %3, %16
  %18 = call i32 (...) @colors_enabled()
  %19 = load i32, i32* @OUTPUT_COLOR, align 4
  %20 = mul nsw i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* @arg_quiet, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @OUTPUT_WARN_CUTOFF, align 4
  %27 = mul nsw i32 %25, %26
  %28 = or i32 %21, %27
  ret i32 %28
}

declare dso_local i32 @on_tty(...) #1

declare dso_local i64 @pager_have(...) #1

declare dso_local i32 @colors_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
