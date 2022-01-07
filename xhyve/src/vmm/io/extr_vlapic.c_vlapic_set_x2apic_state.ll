; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_x2apic_state.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_x2apic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vlapic = type { %struct.TYPE_2__, %struct.LAPIC*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vlapic.0*)* }
%struct.vlapic.0 = type opaque
%struct.LAPIC = type { i32, i64, i32 }

@X2APIC_DISABLED = common dso_local global i32 0, align 4
@APICBASE_X2APIC = common dso_local global i64 0, align 8
@X2APIC_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_set_x2apic_state(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlapic*, align 8
  %8 = alloca %struct.LAPIC*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vm*, %struct.vm** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.vlapic* @vm_lapic(%struct.vm* %9, i32 %10)
  store %struct.vlapic* %11, %struct.vlapic** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @X2APIC_DISABLED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i64, i64* @APICBASE_X2APIC, align 8
  %17 = xor i64 %16, -1
  %18 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %19 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %28

22:                                               ; preds = %3
  %23 = load i64, i64* @APICBASE_X2APIC, align 8
  %24 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %25 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %30 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %29, i32 0, i32 1
  %31 = load %struct.LAPIC*, %struct.LAPIC** %30, align 8
  store %struct.LAPIC* %31, %struct.LAPIC** %8, align 8
  %32 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %33 = call i32 @vlapic_get_id(%struct.vlapic* %32)
  %34 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %35 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %37 = call i64 @x2apic(%struct.vlapic* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %41 = call i64 @x2apic_ldr(%struct.vlapic* %40)
  %42 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %43 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %45 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %51

46:                                               ; preds = %28
  %47 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %48 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %50 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @X2APIC_ENABLED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %57 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.vlapic.0*)*, i32 (%struct.vlapic.0*)** %58, align 8
  %60 = icmp ne i32 (%struct.vlapic.0*)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %63 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.vlapic.0*)*, i32 (%struct.vlapic.0*)** %64, align 8
  %66 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %67 = bitcast %struct.vlapic* %66 to %struct.vlapic.0*
  %68 = call i32 %65(%struct.vlapic.0* %67)
  br label %69

69:                                               ; preds = %61, %55
  br label %70

70:                                               ; preds = %69, %51
  ret void
}

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local i32 @vlapic_get_id(%struct.vlapic*) #1

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i64 @x2apic_ldr(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
