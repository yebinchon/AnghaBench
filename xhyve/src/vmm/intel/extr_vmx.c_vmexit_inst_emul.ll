; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmexit_inst_emul.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmexit_inst_emul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8*, %struct.vm_guest_paging }
%struct.vm_guest_paging = type { i32 }

@VM_EXITCODE_INST_EMUL = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_exit*, i8*, i8*, i32)* @vmexit_inst_emul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmexit_inst_emul(%struct.vm_exit* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.vm_exit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_guest_paging*, align 8
  %10 = alloca i32, align 4
  store %struct.vm_exit* %0, %struct.vm_exit** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %12 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  store %struct.vm_guest_paging* %14, %struct.vm_guest_paging** %9, align 8
  %15 = load i32, i32* @VM_EXITCODE_INST_EMUL, align 4
  %16 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %17 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %20 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i8* %18, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %25 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i8* %23, i8** %27, align 8
  %28 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @vmx_paging_info(%struct.vm_guest_paging* %28, i32 %29)
  %31 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %9, align 8
  %32 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %73 [
    i32 128, label %34
    i32 129, label %46
    i32 130, label %46
    i32 131, label %64
  ]

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @VMCS_GUEST_CS_BASE, align 4
  %37 = call i8* @vmcs_read(i32 %35, i32 %36)
  %38 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %39 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i8* %37, i8** %41, align 8
  %42 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %43 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %73

46:                                               ; preds = %4, %4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @VMCS_GUEST_CS_BASE, align 4
  %49 = call i8* @vmcs_read(i32 %47, i32 %48)
  %50 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %51 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @VMCS_GUEST_CS_ACCESS_RIGHTS, align 4
  %56 = call i8* @vmcs_read(i32 %54, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @SEG_DESC_DEF32(i32 %58)
  %60 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %61 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  br label %73

64:                                               ; preds = %4
  %65 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %66 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i8* null, i8** %68, align 8
  %69 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %70 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %4, %64, %46, %34
  %74 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %75 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @vie_init(i32* %77, i32* null, i32 0)
  ret void
}

declare dso_local i32 @vmx_paging_info(%struct.vm_guest_paging*, i32) #1

declare dso_local i8* @vmcs_read(i32, i32) #1

declare dso_local i32 @SEG_DESC_DEF32(i32) #1

declare dso_local i32 @vie_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
