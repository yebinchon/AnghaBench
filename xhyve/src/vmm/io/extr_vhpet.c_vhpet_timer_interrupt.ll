; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"hpet t%d intr is already asserted\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"hpet t%d intr is not routed to ioapic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhpet*, i32)* @vhpet_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhpet_timer_interrupt(%struct.vhpet* %0, i32 %1) #0 {
  %3 = alloca %struct.vhpet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vhpet* %0, %struct.vhpet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @vhpet_timer_interrupt_enabled(%struct.vhpet* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %87

11:                                               ; preds = %2
  %12 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %13 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %21 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @VM_CTR1(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %87

25:                                               ; preds = %11
  %26 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @vhpet_timer_msi_enabled(%struct.vhpet* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %32 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %35 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 32
  %43 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %44 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @lapic_intr_msi(i32 %33, i32 %42, i32 %50)
  br label %87

52:                                               ; preds = %25
  %53 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @vhpet_timer_ioapic_pin(%struct.vhpet* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %60 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @VM_CTR1(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %87

64:                                               ; preds = %52
  %65 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @vhpet_timer_edge_trig(%struct.vhpet* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %71 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @vioapic_pulse_irq(i32 %72, i32 %73)
  br label %87

75:                                               ; preds = %64
  %76 = load i32, i32* %4, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %79 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %83 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @vioapic_assert_irq(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %10, %19, %30, %58, %75, %69
  ret void
}

declare dso_local i32 @vhpet_timer_interrupt_enabled(%struct.vhpet*, i32) #1

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

declare dso_local i64 @vhpet_timer_msi_enabled(%struct.vhpet*, i32) #1

declare dso_local i32 @lapic_intr_msi(i32, i32, i32) #1

declare dso_local i32 @vhpet_timer_ioapic_pin(%struct.vhpet*, i32) #1

declare dso_local i64 @vhpet_timer_edge_trig(%struct.vhpet*, i32) #1

declare dso_local i32 @vioapic_pulse_irq(i32, i32) #1

declare dso_local i32 @vioapic_assert_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
