; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_badblocks.c_print_status.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_badblocks.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@currently_testing = common dso_local global i64 0, align 8
@num_blocks = common dso_local global i64 0, align 8
@MSG_235 = common dso_local global i32 0, align 4
@MSG_191 = common dso_local global i64 0, align 8
@cur_op = common dso_local global i64 0, align 8
@OP_WRITE = common dso_local global i64 0, align 8
@cur_pattern = common dso_local global i32 0, align 4
@nr_pattern = common dso_local global i32 0, align 4
@num_read_errors = common dso_local global i32 0, align 4
@num_write_errors = common dso_local global i32 0, align 4
@num_corruption_errors = common dso_local global i32 0, align 4
@OP_READ = common dso_local global i64 0, align 8
@OP_BADBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status() #0 {
  %1 = alloca float, align 4
  %2 = load i64, i64* @currently_testing, align 8
  %3 = load i64, i64* @num_blocks, align 8
  %4 = call float @calc_percent(i64 %2, i64 %3)
  store float %4, float* %1, align 4
  %5 = load i32, i32* @MSG_235, align 4
  %6 = load i64, i64* @MSG_191, align 8
  %7 = load i64, i64* @cur_op, align 8
  %8 = load i64, i64* @OP_WRITE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 1
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %6, %12
  %14 = call i32 @lmprintf(i64 %13)
  %15 = load i32, i32* @cur_pattern, align 4
  %16 = load i32, i32* @nr_pattern, align 4
  %17 = load float, float* %1, align 4
  %18 = load i32, i32* @num_read_errors, align 4
  %19 = load i32, i32* @num_write_errors, align 4
  %20 = load i32, i32* @num_corruption_errors, align 4
  %21 = call i32 @PrintInfo(i32 0, i32 %5, i32 %14, i32 %15, i32 %16, float %17, i32 %18, i32 %19, i32 %20)
  %22 = load float, float* %1, align 4
  %23 = fdiv float %22, 2.000000e+00
  %24 = load i64, i64* @cur_op, align 8
  %25 = load i64, i64* @OP_READ, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, float 5.000000e+01, float 0.000000e+00
  %29 = fadd float %23, %28
  store float %29, float* %1, align 4
  %30 = load i32, i32* @OP_BADBLOCKS, align 4
  %31 = load i32, i32* @cur_pattern, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sitofp i32 %32 to float
  %34 = fmul float %33, 1.000000e+02
  %35 = load float, float* %1, align 4
  %36 = fadd float %34, %35
  %37 = load i32, i32* @nr_pattern, align 4
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %36, %38
  %40 = fptosi float %39 to i32
  %41 = call i32 @UpdateProgress(i32 %30, i32 %40)
  ret void
}

declare dso_local float @calc_percent(i64, i64) #1

declare dso_local i32 @PrintInfo(i32, i32, i32, i32, i32, float, i32, i32, i32) #1

declare dso_local i32 @lmprintf(i64) #1

declare dso_local i32 @UpdateProgress(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
