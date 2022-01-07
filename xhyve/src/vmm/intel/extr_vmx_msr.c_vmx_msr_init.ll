; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx_msr.c_vmx_msr_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx_msr.c_vmx_msr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"machdep.tsc.frequency\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"machdep.tsc.frequency\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"hw.busfrequency\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"hw.busfrequency\0A\00", align 1
@misc_enable = common dso_local global i32 0, align 4
@platform_info = common dso_local global i32 0, align 4
@turbo_ratio_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_msr_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 4, i64* %4, align 8
  %6 = call i64 @sysctlbyname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %2, i64* %4, i32* null, i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @xhyve_abort(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i64 @sysctlbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %1, i64* %4, i32* null, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @xhyve_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  store i32 1, i32* @misc_enable, align 4
  %16 = load i32, i32* @misc_enable, align 4
  %17 = or i32 %16, 6144
  store i32 %17, i32* @misc_enable, align 4
  %18 = load i32, i32* @misc_enable, align 4
  %19 = and i32 %18, -327681
  store i32 %19, i32* @misc_enable, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %1, align 4
  %22 = sdiv i32 %20, %21
  %23 = and i32 %22, 255
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 40
  %28 = or i32 %25, %27
  store i32 %28, i32* @platform_info, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %37, %15
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* @turbo_ratio_limit, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* @turbo_ratio_limit, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %29

40:                                               ; preds = %29
  ret void
}

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @xhyve_abort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
