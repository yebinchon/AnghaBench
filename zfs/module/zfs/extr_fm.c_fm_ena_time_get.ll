; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_ena_time_get.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_ena_time_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENA_FMT1_TIME_MASK = common dso_local global i32 0, align 4
@ENA_FMT1_TIME_SHFT = common dso_local global i32 0, align 4
@ENA_FMT2_TIME_MASK = common dso_local global i32 0, align 4
@ENA_FMT2_TIME_SHFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_ena_time_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @ENA_FORMAT(i32 %4)
  switch i32 %5, label %18 [
    i32 129, label %6
    i32 128, label %12
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ENA_FMT1_TIME_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @ENA_FMT1_TIME_SHFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %3, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @ENA_FMT2_TIME_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @ENA_FMT2_TIME_SHFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %12, %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @ENA_FORMAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
