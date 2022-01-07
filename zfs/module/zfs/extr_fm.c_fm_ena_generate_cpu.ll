; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_ena_generate_cpu.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_ena_generate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENA_FORMAT_MASK = common dso_local global i32 0, align 4
@ENA_FMT1_CPUID_SHFT = common dso_local global i32 0, align 4
@ENA_FMT1_CPUID_MASK = common dso_local global i32 0, align 4
@ENA_FMT1_TIME_SHFT = common dso_local global i32 0, align 4
@ENA_FMT1_TIME_MASK = common dso_local global i32 0, align 4
@ENA_FMT2_TIME_SHFT = common dso_local global i32 0, align 4
@ENA_FMT2_TIME_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_ena_generate_cpu(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %55 [
    i32 129, label %9
    i32 128, label %45
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ENA_FORMAT_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ENA_FMT1_CPUID_SHFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @ENA_FMT1_CPUID_MASK, align 4
  %20 = and i32 %18, %19
  %21 = or i32 %15, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENA_FMT1_TIME_SHFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @ENA_FMT1_TIME_MASK, align 4
  %26 = and i32 %24, %25
  %27 = or i32 %21, %26
  store i32 %27, i32* %7, align 4
  br label %44

28:                                               ; preds = %9
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ENA_FORMAT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ENA_FMT1_CPUID_SHFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @ENA_FMT1_CPUID_MASK, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  %38 = call i32 (...) @gethrtime()
  %39 = load i32, i32* @ENA_FMT1_TIME_SHFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @ENA_FMT1_TIME_MASK, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %37, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %28, %12
  br label %56

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ENA_FORMAT_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ENA_FMT2_TIME_SHFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @ENA_FMT2_TIME_MASK, align 4
  %53 = and i32 %51, %52
  %54 = or i32 %48, %53
  store i32 %54, i32* %7, align 4
  br label %56

55:                                               ; preds = %3
  br label %56

56:                                               ; preds = %55, %45, %44
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @gethrtime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
