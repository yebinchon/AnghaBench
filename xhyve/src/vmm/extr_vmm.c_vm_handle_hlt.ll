; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_hlt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_hlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.vm = type { i32, i32, i64, i32*, %struct.vcpu* }
%struct.vcpu = type { i32, i32, i32 }

@__const.vm_handle_hlt.ts = private unnamed_addr constant %struct.timespec { i32 1, i32 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"vcpu already halted\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vmhalt\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Halted\00", align 1
@halt_detection_enabled = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"vmidle\00", align 1
@VCPU_SLEEPING = common dso_local global i32 0, align 4
@VCPU_FROZEN = common dso_local global i32 0, align 4
@VM_SUSPEND_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32)* @vm_handle_hlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_handle_hlt(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.timespec* @__const.vm_handle_hlt.ts to i8*), i64 8, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.vm*, %struct.vm** %4, align 8
  %15 = getelementptr inbounds %struct.vm, %struct.vm* %14, i32 0, i32 0
  %16 = call i32 @CPU_ISSET(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.vm*, %struct.vm** %4, align 8
  %22 = getelementptr inbounds %struct.vm, %struct.vm* %21, i32 0, i32 4
  %23 = load %struct.vcpu*, %struct.vcpu** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %23, i64 %25
  store %struct.vcpu* %26, %struct.vcpu** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %28 = call i32 @vcpu_lock(%struct.vcpu* %27)
  br label %29

29:                                               ; preds = %3, %89
  %30 = load %struct.vm*, %struct.vm** %4, align 8
  %31 = getelementptr inbounds %struct.vm, %struct.vm* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.vm*, %struct.vm** %4, align 8
  %36 = getelementptr inbounds %struct.vm, %struct.vm* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  br label %111

40:                                               ; preds = %34
  %41 = load %struct.vm*, %struct.vm** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @vm_nmi_pending(%struct.vm* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %111

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load %struct.vm*, %struct.vm** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @vm_extint_pending(%struct.vm* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %56 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @vlapic_pending_intr(i32 %57, i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %49
  br label %111

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %66 = load %struct.vm*, %struct.vm** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @VCPU_CTR0(%struct.vm* %66, i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* @halt_detection_enabled, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.vm*, %struct.vm** %4, align 8
  %77 = getelementptr inbounds %struct.vm, %struct.vm* %76, i32 0, i32 0
  %78 = call i32 @CPU_SET_ATOMIC(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %71, %65
  %80 = load %struct.vm*, %struct.vm** %4, align 8
  %81 = getelementptr inbounds %struct.vm, %struct.vm* %80, i32 0, i32 0
  %82 = load %struct.vm*, %struct.vm** %4, align 8
  %83 = getelementptr inbounds %struct.vm, %struct.vm* %82, i32 0, i32 1
  %84 = call i64 @CPU_CMP(i32* %81, i32* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %10, align 4
  br label %111

87:                                               ; preds = %79
  br label %89

88:                                               ; preds = %62
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %89

89:                                               ; preds = %88, %87
  %90 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %91 = load i32, i32* @VCPU_SLEEPING, align 4
  %92 = call i32 @vcpu_require_state_locked(%struct.vcpu* %90, i32 %91)
  %93 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %94 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %93, i32 0, i32 0
  %95 = call i32 @pthread_mutex_lock(i32* %94)
  %96 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %97 = call i32 @vcpu_unlock(%struct.vcpu* %96)
  %98 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %99 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %98, i32 0, i32 1
  %100 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %101 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %100, i32 0, i32 0
  %102 = call i32 @pthread_cond_timedwait_relative_np(i32* %99, i32* %101, %struct.timespec* %11)
  %103 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %104 = call i32 @vcpu_lock(%struct.vcpu* %103)
  %105 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %106 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %105, i32 0, i32 0
  %107 = call i32 @pthread_mutex_unlock(i32* %106)
  %108 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %109 = load i32, i32* @VCPU_FROZEN, align 4
  %110 = call i32 @vcpu_require_state_locked(%struct.vcpu* %108, i32 %109)
  br label %29

111:                                              ; preds = %86, %60, %45, %39
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.vm*, %struct.vm** %4, align 8
  %117 = getelementptr inbounds %struct.vm, %struct.vm* %116, i32 0, i32 0
  %118 = call i32 @CPU_CLR_ATOMIC(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %114, %111
  %120 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %121 = call i32 @vcpu_unlock(%struct.vcpu* %120)
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.vm*, %struct.vm** %4, align 8
  %126 = load i32, i32* @VM_SUSPEND_HALT, align 4
  %127 = call i32 @vm_suspend(%struct.vm* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %119
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @CPU_ISSET(i32, i32*) #2

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #2

declare dso_local i64 @vm_nmi_pending(%struct.vm*, i32) #2

declare dso_local i64 @vm_extint_pending(%struct.vm*, i32) #2

declare dso_local i64 @vlapic_pending_intr(i32, i32*) #2

declare dso_local i32 @VCPU_CTR0(%struct.vm*, i32, i8*) #2

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #2

declare dso_local i64 @CPU_CMP(i32*, i32*) #2

declare dso_local i32 @vcpu_require_state_locked(%struct.vcpu*, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #2

declare dso_local i32 @pthread_cond_timedwait_relative_np(i32*, i32*, %struct.timespec*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @CPU_CLR_ATOMIC(i32, i32*) #2

declare dso_local i32 @vm_suspend(%struct.vm*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
