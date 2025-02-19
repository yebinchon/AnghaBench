; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_lapic.c_lapic_wrmsr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_lapic.c_lapic_wrmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vlapic = type { i32 }

@MSR_APICBASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapic_wrmsr(%struct.vm* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vlapic*, align 8
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.vm*, %struct.vm** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.vlapic* @vm_lapic(%struct.vm* %14, i32 %15)
  store %struct.vlapic* %16, %struct.vlapic** %13, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @MSR_APICBASE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @vlapic_set_apicbase(%struct.vlapic* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  br label %32

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @x2apic_msr_to_regoff(i64 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @vlapic_write(%struct.vlapic* %27, i32 0, i64 %28, i32 %29, i32* %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %24, %20
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local i32 @vlapic_set_apicbase(%struct.vlapic*, i32) #1

declare dso_local i64 @x2apic_msr_to_regoff(i64) #1

declare dso_local i32 @vlapic_write(%struct.vlapic*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
