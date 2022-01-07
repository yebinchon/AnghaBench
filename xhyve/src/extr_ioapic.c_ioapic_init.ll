; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_ioapic.c_ioapic_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_ioapic.c_ioapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pci_pins = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioapic_init() #0 {
  %1 = call i64 @xh_vm_ioapic_pincount(i32* @pci_pins)
  %2 = icmp slt i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* @pci_pins, align 4
  br label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @pci_pins, align 4
  %6 = icmp sle i32 %5, 16
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 0, i32* @pci_pins, align 4
  br label %11

8:                                                ; preds = %4
  %9 = load i32, i32* @pci_pins, align 4
  %10 = sub nsw i32 %9, 16
  store i32 %10, i32* @pci_pins, align 4
  br label %11

11:                                               ; preds = %8, %7, %3
  ret void
}

declare dso_local i64 @xh_vm_ioapic_pincount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
