; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_suspend.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.vm = type { i32, i32*, i32, %struct.vcpu* }
%struct.vcpu = type { i32, i32 }

@__const.vm_handle_suspend.ts = private unnamed_addr constant %struct.timespec { i32 1, i32 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"All vcpus suspended\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Sleeping during suspend\00", align 1
@VCPU_SLEEPING = common dso_local global i32 0, align 4
@VCPU_FROZEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Rendezvous during suspend\00", align 1
@VM_MAXCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32*)* @vm_handle_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_handle_suspend(%struct.vm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vcpu*, align 8
  %10 = alloca %struct.timespec, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.timespec* @__const.vm_handle_suspend.ts to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %12 = load %struct.vm*, %struct.vm** %4, align 8
  %13 = getelementptr inbounds %struct.vm, %struct.vm* %12, i32 0, i32 3
  %14 = load %struct.vcpu*, %struct.vcpu** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %14, i64 %16
  store %struct.vcpu* %17, %struct.vcpu** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.vm*, %struct.vm** %4, align 8
  %20 = getelementptr inbounds %struct.vm, %struct.vm* %19, i32 0, i32 0
  %21 = call i32 @CPU_SET_ATOMIC(i32 %18, i32* %20)
  %22 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %23 = call i32 @vcpu_lock(%struct.vcpu* %22)
  br label %24

24:                                               ; preds = %3, %76
  %25 = load %struct.vm*, %struct.vm** %4, align 8
  %26 = getelementptr inbounds %struct.vm, %struct.vm* %25, i32 0, i32 0
  %27 = load %struct.vm*, %struct.vm** %4, align 8
  %28 = getelementptr inbounds %struct.vm, %struct.vm* %27, i32 0, i32 2
  %29 = call i64 @CPU_CMP(i32* %26, i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.vm*, %struct.vm** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @VCPU_CTR0(%struct.vm* %32, i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %77

35:                                               ; preds = %24
  %36 = load %struct.vm*, %struct.vm** %4, align 8
  %37 = getelementptr inbounds %struct.vm, %struct.vm* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.vm*, %struct.vm** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @VCPU_CTR0(%struct.vm* %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %45 = load i32, i32* @VCPU_SLEEPING, align 4
  %46 = call i32 @vcpu_require_state_locked(%struct.vcpu* %44, i32 %45)
  %47 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %48 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_lock(i32* %48)
  %50 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %51 = call i32 @vcpu_unlock(%struct.vcpu* %50)
  %52 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %53 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %52, i32 0, i32 1
  %54 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %55 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %54, i32 0, i32 0
  %56 = call i32 @pthread_cond_timedwait_relative_np(i32* %53, i32* %55, %struct.timespec* %10)
  %57 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %58 = call i32 @vcpu_lock(%struct.vcpu* %57)
  %59 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %60 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %59, i32 0, i32 0
  %61 = call i32 @pthread_mutex_unlock(i32* %60)
  %62 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %63 = load i32, i32* @VCPU_FROZEN, align 4
  %64 = call i32 @vcpu_require_state_locked(%struct.vcpu* %62, i32 %63)
  br label %76

65:                                               ; preds = %35
  %66 = load %struct.vm*, %struct.vm** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @VCPU_CTR0(%struct.vm* %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %70 = call i32 @vcpu_unlock(%struct.vcpu* %69)
  %71 = load %struct.vm*, %struct.vm** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @vm_handle_rendezvous(%struct.vm* %71, i32 %72)
  %74 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %75 = call i32 @vcpu_lock(%struct.vcpu* %74)
  br label %76

76:                                               ; preds = %65, %40
  br label %24

77:                                               ; preds = %31
  %78 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %79 = call i32 @vcpu_unlock(%struct.vcpu* %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %95, %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @VM_MAXCPU, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.vm*, %struct.vm** %4, align 8
  %87 = getelementptr inbounds %struct.vm, %struct.vm* %86, i32 0, i32 0
  %88 = call i64 @CPU_ISSET(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.vm*, %struct.vm** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @vcpu_notify_event(%struct.vm* %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %90, %84
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load i32*, i32** %6, align 8
  store i32 1, i32* %99, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #2

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #2

declare dso_local i64 @CPU_CMP(i32*, i32*) #2

declare dso_local i32 @VCPU_CTR0(%struct.vm*, i32, i8*) #2

declare dso_local i32 @vcpu_require_state_locked(%struct.vcpu*, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #2

declare dso_local i32 @pthread_cond_timedwait_relative_np(i32*, i32*, %struct.timespec*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @vm_handle_rendezvous(%struct.vm*, i32) #2

declare dso_local i64 @CPU_ISSET(i32, i32*) #2

declare dso_local i32 @vcpu_notify_event(%struct.vm*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
