; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_trigger_lvt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_trigger_lvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32 }

@APIC_OFFSET_LINT0_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_LINT1_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_TIMER_LVT = common dso_local global i32 0, align 4
@APIC_LVT_DM_FIXED = common dso_local global i32 0, align 4
@APIC_OFFSET_ERROR_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_PERF_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_THERM_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_CMCI_LVT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LVTS_TRIGGERRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlapic_trigger_lvt(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %8 = call i32 @vlapic_enabled(%struct.vlapic* %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %28 [
    i32 132, label %12
    i32 131, label %20
  ]

12:                                               ; preds = %10
  %13 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %14 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %17 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vm_inject_extint(i32 %15, i32 %18)
  br label %29

20:                                               ; preds = %10
  %21 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %22 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %25 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vm_inject_nmi(i32 %23, i32 %26)
  br label %29

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28, %20, %12
  store i32 0, i32* %3, align 4
  br label %84

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %66 [
    i32 132, label %32
    i32 131, label %36
    i32 128, label %40
    i32 133, label %47
    i32 130, label %54
    i32 129, label %58
    i32 134, label %62
  ]

32:                                               ; preds = %30
  %33 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %34 = load i32, i32* @APIC_OFFSET_LINT0_LVT, align 4
  %35 = call i32 @vlapic_get_lvt(%struct.vlapic* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %68

36:                                               ; preds = %30
  %37 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %38 = load i32, i32* @APIC_OFFSET_LINT1_LVT, align 4
  %39 = call i32 @vlapic_get_lvt(%struct.vlapic* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %68

40:                                               ; preds = %30
  %41 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %42 = load i32, i32* @APIC_OFFSET_TIMER_LVT, align 4
  %43 = call i32 @vlapic_get_lvt(%struct.vlapic* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @APIC_LVT_DM_FIXED, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %68

47:                                               ; preds = %30
  %48 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %49 = load i32, i32* @APIC_OFFSET_ERROR_LVT, align 4
  %50 = call i32 @vlapic_get_lvt(%struct.vlapic* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @APIC_LVT_DM_FIXED, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %68

54:                                               ; preds = %30
  %55 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %56 = load i32, i32* @APIC_OFFSET_PERF_LVT, align 4
  %57 = call i32 @vlapic_get_lvt(%struct.vlapic* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %68

58:                                               ; preds = %30
  %59 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %60 = load i32, i32* @APIC_OFFSET_THERM_LVT, align 4
  %61 = call i32 @vlapic_get_lvt(%struct.vlapic* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %68

62:                                               ; preds = %30
  %63 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %64 = load i32, i32* @APIC_OFFSET_CMCI_LVT, align 4
  %65 = call i32 @vlapic_get_lvt(%struct.vlapic* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %68

66:                                               ; preds = %30
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %3, align 4
  br label %84

68:                                               ; preds = %62, %58, %54, %47, %40, %36, %32
  %69 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @vlapic_fire_lvt(%struct.vlapic* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %75 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %78 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LVTS_TRIGGERRED, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @vmm_stat_array_incr(i32 %76, i32 %79, i32 %80, i32 %81, i32 1)
  br label %83

83:                                               ; preds = %73, %68
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %66, %29
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @vlapic_enabled(%struct.vlapic*) #1

declare dso_local i32 @vm_inject_extint(i32, i32) #1

declare dso_local i32 @vm_inject_nmi(i32, i32) #1

declare dso_local i32 @vlapic_get_lvt(%struct.vlapic*, i32) #1

declare dso_local i64 @vlapic_fire_lvt(%struct.vlapic*, i32) #1

declare dso_local i32 @vmm_stat_array_incr(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
