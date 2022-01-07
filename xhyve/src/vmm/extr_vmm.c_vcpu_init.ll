; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.vcpu* }
%struct.vcpu = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vcpu_init: invalid vcpu %d\00", align 1
@VCPU_IDLE = common dso_local global i32 0, align 4
@X2APIC_DISABLED = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_X87 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32, i32)* @vcpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcpu_init(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VM_MAXCPU, align 4
  %13 = icmp slt i32 %11, %12
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i1 [ false, %3 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  %21 = load %struct.vm*, %struct.vm** %4, align 8
  %22 = getelementptr inbounds %struct.vm, %struct.vm* %21, i32 0, i32 1
  %23 = load %struct.vcpu*, %struct.vcpu** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %23, i64 %25
  store %struct.vcpu* %26, %struct.vcpu** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %14
  %30 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %31 = call i32 @vcpu_lock_init(%struct.vcpu* %30)
  %32 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %33 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %32, i32 0, i32 11
  %34 = call i32 @pthread_mutex_init(i32* %33, i32* null)
  %35 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %36 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %35, i32 0, i32 10
  %37 = call i32 @pthread_cond_init(i32* %36, i32* null)
  %38 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %39 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %38, i32 0, i32 9
  %40 = call i32 @pthread_mutex_init(i32* %39, i32* null)
  %41 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %42 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %41, i32 0, i32 8
  %43 = call i32 @pthread_cond_init(i32* %42, i32* null)
  %44 = load i32, i32* @VCPU_IDLE, align 4
  %45 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %46 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = call i32 (...) @vmm_stat_alloc()
  %48 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %49 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %29, %14
  %51 = load %struct.vm*, %struct.vm** %4, align 8
  %52 = getelementptr inbounds %struct.vm, %struct.vm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @VLAPIC_INIT(i32 %53, i32 %54)
  %56 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %57 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vm*, %struct.vm** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @X2APIC_DISABLED, align 4
  %61 = call i32 @vm_set_x2apic_state(%struct.vm* %58, i32 %59, i32 %60)
  %62 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %63 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %65 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %67 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %69 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @XFEATURE_ENABLED_X87, align 4
  %71 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %72 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %74 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @vmm_stat_init(i32 %75)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vcpu_lock_init(%struct.vcpu*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @vmm_stat_alloc(...) #1

declare dso_local i32 @VLAPIC_INIT(i32, i32) #1

declare dso_local i32 @vm_set_x2apic_state(%struct.vm*, i32, i32) #1

declare dso_local i32 @vmm_stat_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
