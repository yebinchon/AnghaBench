; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus.c_dump_bus_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus.c_dump_bus_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_automount_vtable = common dso_local global i32 0, align 4
@bus_cgroup_vtable = common dso_local global i32 0, align 4
@bus_device_vtable = common dso_local global i32 0, align 4
@bus_exec_vtable = common dso_local global i32 0, align 4
@bus_job_vtable = common dso_local global i32 0, align 4
@bus_kill_vtable = common dso_local global i32 0, align 4
@bus_manager_vtable = common dso_local global i32 0, align 4
@bus_mount_vtable = common dso_local global i32 0, align 4
@bus_path_vtable = common dso_local global i32 0, align 4
@bus_scope_vtable = common dso_local global i32 0, align 4
@bus_service_vtable = common dso_local global i32 0, align 4
@bus_slice_vtable = common dso_local global i32 0, align 4
@bus_socket_vtable = common dso_local global i32 0, align 4
@bus_swap_vtable = common dso_local global i32 0, align 4
@bus_target_vtable = common dso_local global i32 0, align 4
@bus_timer_vtable = common dso_local global i32 0, align 4
@bus_unit_vtable = common dso_local global i32 0, align 4
@bus_unit_cgroup_vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_bus_properties(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @assert(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @bus_automount_vtable, align 4
  %7 = call i32 @vtable_dump_bus_properties(i32* %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @bus_cgroup_vtable, align 4
  %10 = call i32 @vtable_dump_bus_properties(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @bus_device_vtable, align 4
  %13 = call i32 @vtable_dump_bus_properties(i32* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @bus_exec_vtable, align 4
  %16 = call i32 @vtable_dump_bus_properties(i32* %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @bus_job_vtable, align 4
  %19 = call i32 @vtable_dump_bus_properties(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @bus_kill_vtable, align 4
  %22 = call i32 @vtable_dump_bus_properties(i32* %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @bus_manager_vtable, align 4
  %25 = call i32 @vtable_dump_bus_properties(i32* %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @bus_mount_vtable, align 4
  %28 = call i32 @vtable_dump_bus_properties(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @bus_path_vtable, align 4
  %31 = call i32 @vtable_dump_bus_properties(i32* %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @bus_scope_vtable, align 4
  %34 = call i32 @vtable_dump_bus_properties(i32* %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @bus_service_vtable, align 4
  %37 = call i32 @vtable_dump_bus_properties(i32* %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @bus_slice_vtable, align 4
  %40 = call i32 @vtable_dump_bus_properties(i32* %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @bus_socket_vtable, align 4
  %43 = call i32 @vtable_dump_bus_properties(i32* %41, i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @bus_swap_vtable, align 4
  %46 = call i32 @vtable_dump_bus_properties(i32* %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @bus_target_vtable, align 4
  %49 = call i32 @vtable_dump_bus_properties(i32* %47, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @bus_timer_vtable, align 4
  %52 = call i32 @vtable_dump_bus_properties(i32* %50, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @bus_unit_vtable, align 4
  %55 = call i32 @vtable_dump_bus_properties(i32* %53, i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @bus_unit_cgroup_vtable, align 4
  %58 = call i32 @vtable_dump_bus_properties(i32* %56, i32 %57)
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @vtable_dump_bus_properties(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
