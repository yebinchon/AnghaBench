; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_set_state_locked.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_set_state_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.vcpu = type { i32, i32, i32 }

@__const.vcpu_set_state_locked.ts = private unnamed_addr constant %struct.timespec { i32 1, i32 0 }, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid transition from vcpu idle state\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu*, i32, i32)* @vcpu_set_state_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_set_state_locked(%struct.vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 4
  store %struct.vcpu* %0, %struct.vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timespec* @__const.vcpu_set_state_locked.ts to i8*), i64 8, i1 false)
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %19, %13
  %15 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %16 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 130
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %21 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %20, i32 0, i32 2
  %22 = call i32 @pthread_mutex_lock(i32* %21)
  %23 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %24 = call i32 @vcpu_unlock(%struct.vcpu* %23)
  %25 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %26 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %25, i32 0, i32 1
  %27 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %28 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %27, i32 0, i32 2
  %29 = call i32 @pthread_cond_timedwait_relative_np(i32* %26, i32* %28, %struct.timespec* %9)
  %30 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %31 = call i32 @vcpu_lock(%struct.vcpu* %30)
  %32 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %33 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %32, i32 0, i32 2
  %34 = call i32 @pthread_mutex_unlock(i32* %33)
  br label %14

35:                                               ; preds = %14
  br label %43

36:                                               ; preds = %3
  %37 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %38 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 130
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %36, %35
  %44 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %45 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %55 [
    i32 130, label %47
    i32 129, label %47
    i32 128, label %47
    i32 131, label %51
  ]

47:                                               ; preds = %43, %43, %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 131
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 131
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %43, %51, %47
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %4, align 4
  br label %71

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %63 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 130
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %68 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %67, i32 0, i32 1
  %69 = call i32 @pthread_cond_broadcast(i32* %68)
  br label %70

70:                                               ; preds = %66, %60
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #2

declare dso_local i32 @pthread_cond_timedwait_relative_np(i32*, i32*, %struct.timespec*) #2

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @pthread_cond_broadcast(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
