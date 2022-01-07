; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_handle_apic_access.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_handle_apic_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }
%struct.vm_exit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UNHANDLED = common dso_local global i32 0, align 4
@DEFAULT_APIC_BASE = common dso_local global i64 0, align 8
@VIE_INVALID_GLA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, %struct.vm_exit*)* @vmx_handle_apic_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_handle_apic_access(%struct.vmx* %0, i32 %1, %struct.vm_exit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vm_exit* %2, %struct.vm_exit** %7, align 8
  %12 = load %struct.vmx*, %struct.vmx** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @apic_access_virtualization(%struct.vmx* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @UNHANDLED, align 4
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %20 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @APIC_ACCESS_TYPE(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @APIC_ACCESS_OFFSET(i32 %26)
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %33 [
    i32 157, label %32
    i32 139, label %32
    i32 138, label %32
    i32 156, label %32
    i32 137, label %32
  ]

32:                                               ; preds = %30, %30, %30, %30, %30
  store i32 1, i32* %11, align 4
  br label %34

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %32
  br label %44

35:                                               ; preds = %18
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %41 [
    i32 128, label %40
    i32 157, label %40
    i32 139, label %40
    i32 138, label %40
    i32 147, label %40
    i32 146, label %40
    i32 145, label %40
    i32 144, label %40
    i32 143, label %40
    i32 142, label %40
    i32 141, label %40
    i32 140, label %40
    i32 136, label %40
    i32 135, label %40
    i32 134, label %40
    i32 133, label %40
    i32 132, label %40
    i32 131, label %40
    i32 130, label %40
    i32 129, label %40
    i32 155, label %40
    i32 154, label %40
    i32 153, label %40
    i32 152, label %40
    i32 151, label %40
    i32 150, label %40
    i32 149, label %40
    i32 148, label %40
    i32 156, label %40
    i32 137, label %40
  ]

40:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  store i32 1, i32* %11, align 4
  br label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %49 = load i64, i64* @DEFAULT_APIC_BASE, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* @VIE_INVALID_GLA, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @vmexit_inst_emul(%struct.vm_exit* %48, i64 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i32, i32* @UNHANDLED, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @apic_access_virtualization(%struct.vmx*, i32) #1

declare dso_local i32 @APIC_ACCESS_TYPE(i32) #1

declare dso_local i32 @APIC_ACCESS_OFFSET(i32) #1

declare dso_local i32 @vmexit_inst_emul(%struct.vm_exit*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
