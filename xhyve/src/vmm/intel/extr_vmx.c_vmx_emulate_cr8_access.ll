; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_emulate_cr8_access.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_emulate_cr8_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }
%struct.vlapic = type { i32 }

@UNHANDLED = common dso_local global i32 0, align 4
@HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, i32)* @vmx_emulate_cr8_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_emulate_cr8_access(%struct.vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 224
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @UNHANDLED, align 4
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.vmx*, %struct.vmx** %5, align 8
  %18 = getelementptr inbounds %struct.vmx, %struct.vmx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.vlapic* @vm_lapic(i32 %19, i32 %20)
  store %struct.vlapic* %21, %struct.vlapic** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 15
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %30 = call i32 @vlapic_get_cr8(%struct.vlapic* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @vmx_set_guest_reg(i32 %31, i32 %32, i32 %33)
  br label %42

35:                                               ; preds = %16
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @vmx_get_guest_reg(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @vlapic_set_cr8(%struct.vlapic* %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* @HANDLED, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.vlapic* @vm_lapic(i32, i32) #1

declare dso_local i32 @vlapic_get_cr8(%struct.vlapic*) #1

declare dso_local i32 @vmx_set_guest_reg(i32, i32, i32) #1

declare dso_local i32 @vmx_get_guest_reg(i32, i32) #1

declare dso_local i32 @vlapic_set_cr8(%struct.vlapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
