; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_driver = type { i32, i64 }

@acpi_root = common dso_local global i32 0, align 4
@acpi_bus_unattach = common dso_local global i32 0, align 4
@WALK_UP = common dso_local global i32 0, align 4
@acpi_bus_drivers_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_bus_unregister_driver(%struct.acpi_driver* %0) #0 {
  %2 = alloca %struct.acpi_driver*, align 8
  store %struct.acpi_driver* %0, %struct.acpi_driver** %2, align 8
  %3 = load %struct.acpi_driver*, %struct.acpi_driver** %2, align 8
  %4 = icmp ne %struct.acpi_driver* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load i32, i32* @acpi_root, align 4
  %8 = load i32, i32* @acpi_bus_unattach, align 4
  %9 = load i32, i32* @WALK_UP, align 4
  %10 = load %struct.acpi_driver*, %struct.acpi_driver** %2, align 8
  %11 = call i32 @acpi_bus_walk(i32 %7, i32 %8, i32 %9, %struct.acpi_driver* %10)
  %12 = load %struct.acpi_driver*, %struct.acpi_driver** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %23

17:                                               ; preds = %6
  %18 = call i32 @down(i32* @acpi_bus_drivers_lock)
  %19 = load %struct.acpi_driver*, %struct.acpi_driver** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = call i32 @up(i32* @acpi_bus_drivers_lock)
  br label %23

23:                                               ; preds = %17, %16, %5
  ret void
}

declare dso_local i32 @acpi_bus_walk(i32, i32, i32, %struct.acpi_driver*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
