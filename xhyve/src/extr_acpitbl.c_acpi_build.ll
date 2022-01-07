; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpi_build.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpi_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_ncpu = common dso_local global i32 0, align 4
@XHYVE_ACPI_BASE = common dso_local global i32 0, align 4
@XHYVE_ACPI_SIZE = common dso_local global i32 0, align 4
@tb = common dso_local global i32* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@hpet_capabilities = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_build(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* @acpi_ncpu, align 4
  %6 = load i32, i32* @XHYVE_ACPI_BASE, align 4
  %7 = load i32, i32* @XHYVE_ACPI_SIZE, align 4
  %8 = call i32* @paddr_guest2host(i32 %6, i32 %7)
  store i32* %8, i32** @tb, align 8
  %9 = load i32*, i32** @tb, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EFAULT, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = call i32 @xh_vm_get_hpet_capabilities(i32* @hpet_capabilities)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %13
  %20 = call i32 (...) @acpitbl_build_rdsp()
  %21 = call i32 (...) @acpitbl_build_rsdt()
  %22 = call i32 (...) @acpitbl_build_xsdt()
  %23 = call i32 (...) @acpitbl_build_madt()
  %24 = call i32 (...) @acpitbl_build_fadt()
  %25 = call i32 (...) @acpitbl_build_hpet()
  %26 = call i32 (...) @acpitbl_build_mcfg()
  %27 = call i32 (...) @acpitbl_build_facs()
  %28 = call i32 (...) @acpitbl_build_dsdt()
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %17, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32* @paddr_guest2host(i32, i32) #1

declare dso_local i32 @xh_vm_get_hpet_capabilities(i32*) #1

declare dso_local i32 @acpitbl_build_rdsp(...) #1

declare dso_local i32 @acpitbl_build_rsdt(...) #1

declare dso_local i32 @acpitbl_build_xsdt(...) #1

declare dso_local i32 @acpitbl_build_madt(...) #1

declare dso_local i32 @acpitbl_build_fadt(...) #1

declare dso_local i32 @acpitbl_build_hpet(...) #1

declare dso_local i32 @acpitbl_build_mcfg(...) #1

declare dso_local i32 @acpitbl_build_facs(...) #1

declare dso_local i32 @acpitbl_build_dsdt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
