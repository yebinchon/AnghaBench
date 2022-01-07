; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_host.c_vmm_host_state_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_host.c_vmm_host_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@vmm_xsave_limits = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"hw.optional.avx1_0\00", align 1
@XFEATURE_AVX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmm_host_state_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [4 x i64], align 16
  %3 = alloca i64, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmm_xsave_limits, i32 0, i32 0), align 8
  store i64 8, i64* %3, align 8
  %4 = call i32 @sysctlbyname(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %1, i64* %3, i32* null, i32 0)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %11 = call i32 @cpuid_count(i32 13, i32 0, i64* %10)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmm_xsave_limits, i32 0, i32 0), align 8
  %12 = load i32, i32* @XFEATURE_AVX, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmm_xsave_limits, i32 0, i32 2), align 8
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmm_xsave_limits, i32 0, i32 1), align 8
  br label %15

15:                                               ; preds = %9, %6, %0
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i64*, i64*, i32*, i32) #1

declare dso_local i32 @cpuid_count(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
