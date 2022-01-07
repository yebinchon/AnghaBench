; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_run.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.vcpu*, i32, i32, i32, i32 }
%struct.vcpu = type { i32, %struct.vm_exit }
%struct.vm_exit = type { i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VCPU_RUNNING = common dso_local global i32 0, align 4
@VCPU_FROZEN = common dso_local global i32 0, align 4
@PSL_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_run(%struct.vm* %0, i32 %1, %struct.vm_exit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vcpu*, align 8
  %10 = alloca %struct.vm_exit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vm_exit* %2, %struct.vm_exit** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @VM_MAXCPU, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %149

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.vm*, %struct.vm** %5, align 8
  %26 = getelementptr inbounds %struct.vm, %struct.vm* %25, i32 0, i32 5
  %27 = call i64 @CPU_ISSET(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %149

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.vm*, %struct.vm** %5, align 8
  %34 = getelementptr inbounds %struct.vm, %struct.vm* %33, i32 0, i32 4
  %35 = call i64 @CPU_ISSET(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %149

39:                                               ; preds = %31
  %40 = load %struct.vm*, %struct.vm** %5, align 8
  %41 = getelementptr inbounds %struct.vm, %struct.vm* %40, i32 0, i32 3
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %13, align 8
  %43 = load %struct.vm*, %struct.vm** %5, align 8
  %44 = getelementptr inbounds %struct.vm, %struct.vm* %43, i32 0, i32 2
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %14, align 8
  %46 = load %struct.vm*, %struct.vm** %5, align 8
  %47 = getelementptr inbounds %struct.vm, %struct.vm* %46, i32 0, i32 1
  %48 = load %struct.vcpu*, %struct.vcpu** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %48, i64 %50
  store %struct.vcpu* %51, %struct.vcpu** %9, align 8
  %52 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %53 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %52, i32 0, i32 1
  store %struct.vm_exit* %53, %struct.vm_exit** %10, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %143, %39
  %55 = load %struct.vm*, %struct.vm** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @VCPU_RUNNING, align 4
  %58 = call i32 @vcpu_require_state(%struct.vm* %55, i32 %56, i32 %57)
  %59 = load %struct.vm*, %struct.vm** %5, align 8
  %60 = getelementptr inbounds %struct.vm, %struct.vm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %64 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @VMRUN(i32 %61, i32 %62, i32 %65, i8* %66, i8* %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.vm*, %struct.vm** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @VCPU_FROZEN, align 4
  %72 = call i32 @vcpu_require_state(%struct.vm* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %137

75:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  %76 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %77 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %80 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = add i32 %78, %82
  %84 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %85 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %87 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  switch i32 %89, label %135 [
    i32 128, label %90
    i32 133, label %94
    i32 129, label %103
    i32 137, label %107
    i32 130, label %121
    i32 134, label %122
    i32 136, label %126
    i32 135, label %126
    i32 132, label %131
    i32 131, label %131
  ]

90:                                               ; preds = %75
  %91 = load %struct.vm*, %struct.vm** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @vm_handle_suspend(%struct.vm* %91, i32 %92, i32* %11)
  store i32 %93, i32* %8, align 4
  br label %136

94:                                               ; preds = %75
  %95 = load %struct.vm*, %struct.vm** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %98 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vioapic_process_eoi(%struct.vm* %95, i32 %96, i32 %101)
  br label %136

103:                                              ; preds = %75
  %104 = load %struct.vm*, %struct.vm** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @vm_handle_rendezvous(%struct.vm* %104, i32 %105)
  store i32 0, i32* %8, align 4
  br label %136

107:                                              ; preds = %75
  %108 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %109 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PSL_I, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load %struct.vm*, %struct.vm** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @vm_handle_hlt(%struct.vm* %117, i32 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  br label %136

121:                                              ; preds = %75
  store i32 0, i32* %8, align 4
  br label %136

122:                                              ; preds = %75
  %123 = load %struct.vm*, %struct.vm** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @vm_handle_inst_emul(%struct.vm* %123, i32 %124, i32* %11)
  store i32 %125, i32* %8, align 4
  br label %136

126:                                              ; preds = %75, %75
  %127 = load %struct.vm*, %struct.vm** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %130 = call i32 @vm_handle_inout(%struct.vm* %127, i32 %128, %struct.vm_exit* %129, i32* %11)
  store i32 %130, i32* %8, align 4
  br label %136

131:                                              ; preds = %75, %75
  %132 = load %struct.vm*, %struct.vm** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @vm_inject_ud(%struct.vm* %132, i32 %133)
  br label %136

135:                                              ; preds = %75
  store i32 1, i32* %11, align 4
  br label %136

136:                                              ; preds = %135, %131, %126, %122, %121, %107, %103, %94, %90
  br label %137

137:                                              ; preds = %136, %54
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %54

144:                                              ; preds = %140, %137
  %145 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %146 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %147 = call i32 @bcopy(%struct.vm_exit* %145, %struct.vm_exit* %146, i32 32)
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %37, %29, %21
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vcpu_require_state(%struct.vm*, i32, i32) #1

declare dso_local i32 @VMRUN(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @vm_handle_suspend(%struct.vm*, i32, i32*) #1

declare dso_local i32 @vioapic_process_eoi(%struct.vm*, i32, i32) #1

declare dso_local i32 @vm_handle_rendezvous(%struct.vm*, i32) #1

declare dso_local i32 @vm_handle_hlt(%struct.vm*, i32, i32) #1

declare dso_local i32 @vm_handle_inst_emul(%struct.vm*, i32, i32*) #1

declare dso_local i32 @vm_handle_inout(%struct.vm*, i32, %struct.vm_exit*, i32*) #1

declare dso_local i32 @vm_inject_ud(%struct.vm*, i32) #1

declare dso_local i32 @bcopy(%struct.vm_exit*, %struct.vm_exit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
