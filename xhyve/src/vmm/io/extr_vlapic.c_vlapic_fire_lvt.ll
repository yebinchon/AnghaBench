; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_fire_lvt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_fire_lvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32 }

@APIC_LVT_M = common dso_local global i32 0, align 4
@APIC_LVT_VECTOR = common dso_local global i32 0, align 4
@APIC_LVT_DM = common dso_local global i32 0, align 4
@APIC_ESR_SEND_ILLEGAL_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlapic*, i32)* @vlapic_fire_lvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlapic_fire_lvt(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @APIC_LVT_M, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @APIC_LVT_VECTOR, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @APIC_LVT_DM, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %58 [
    i32 129, label %21
    i32 128, label %42
    i32 130, label %50
  ]

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %26 = load i32, i32* @APIC_ESR_SEND_ILLEGAL_VECTOR, align 4
  %27 = call i32 @vlapic_set_error(%struct.vlapic* %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %60

28:                                               ; preds = %21
  %29 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @vlapic_set_intr_ready(%struct.vlapic* %29, i32 %30, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %35 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %38 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vcpu_notify_event(i32 %36, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %33, %28
  br label %59

42:                                               ; preds = %13
  %43 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %44 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %47 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vm_inject_nmi(i32 %45, i32 %48)
  br label %59

50:                                               ; preds = %13
  %51 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %52 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %55 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vm_inject_extint(i32 %53, i32 %56)
  br label %59

58:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %50, %42, %41
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %24, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @vlapic_set_error(%struct.vlapic*, i32) #1

declare dso_local i32 @vlapic_set_intr_ready(%struct.vlapic*, i32, i32) #1

declare dso_local i32 @vcpu_notify_event(i32, i32, i32) #1

declare dso_local i32 @vm_inject_nmi(i32, i32) #1

declare dso_local i32 @vm_inject_extint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
