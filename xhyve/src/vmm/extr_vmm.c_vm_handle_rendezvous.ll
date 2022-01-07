; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_rendezvous.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_rendezvous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i32, i32, i32, i32 (%struct.vm*, i32, i32)*, i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vm_handle_rendezvous: invalid vcpuid %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Calling rendezvous func\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Rendezvous completed\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Wait for rendezvous completion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32)* @vm_handle_rendezvous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_handle_rendezvous(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VM_MAXCPU, align 4
  %13 = icmp slt i32 %11, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i1 [ true, %2 ], [ %15, %14 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.vm*, %struct.vm** %3, align 8
  %24 = getelementptr inbounds %struct.vm, %struct.vm* %23, i32 0, i32 0
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  br label %26

26:                                               ; preds = %84, %16
  %27 = load %struct.vm*, %struct.vm** %3, align 8
  %28 = getelementptr inbounds %struct.vm, %struct.vm* %27, i32 0, i32 5
  %29 = load i32 (%struct.vm*, i32, i32)*, i32 (%struct.vm*, i32, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.vm*, i32, i32)* %29, null
  br i1 %30, label %31, label %93

31:                                               ; preds = %26
  %32 = load %struct.vm*, %struct.vm** %3, align 8
  %33 = getelementptr inbounds %struct.vm, %struct.vm* %32, i32 0, i32 3
  %34 = load %struct.vm*, %struct.vm** %3, align 8
  %35 = getelementptr inbounds %struct.vm, %struct.vm* %34, i32 0, i32 6
  %36 = call i32 @CPU_AND(i32* %33, i32* %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %68

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.vm*, %struct.vm** %3, align 8
  %42 = getelementptr inbounds %struct.vm, %struct.vm* %41, i32 0, i32 3
  %43 = call i64 @CPU_ISSET(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.vm*, %struct.vm** %3, align 8
  %48 = getelementptr inbounds %struct.vm, %struct.vm* %47, i32 0, i32 2
  %49 = call i64 @CPU_ISSET(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %45
  %52 = load %struct.vm*, %struct.vm** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @VCPU_CTR0(%struct.vm* %52, i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.vm*, %struct.vm** %3, align 8
  %56 = getelementptr inbounds %struct.vm, %struct.vm* %55, i32 0, i32 5
  %57 = load i32 (%struct.vm*, i32, i32)*, i32 (%struct.vm*, i32, i32)** %56, align 8
  %58 = load %struct.vm*, %struct.vm** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.vm*, %struct.vm** %3, align 8
  %61 = getelementptr inbounds %struct.vm, %struct.vm* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %57(%struct.vm* %58, i32 %59, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.vm*, %struct.vm** %3, align 8
  %66 = getelementptr inbounds %struct.vm, %struct.vm* %65, i32 0, i32 2
  %67 = call i32 @CPU_SET(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %51, %45, %39, %31
  %69 = load %struct.vm*, %struct.vm** %3, align 8
  %70 = getelementptr inbounds %struct.vm, %struct.vm* %69, i32 0, i32 3
  %71 = load %struct.vm*, %struct.vm** %3, align 8
  %72 = getelementptr inbounds %struct.vm, %struct.vm* %71, i32 0, i32 2
  %73 = call i64 @CPU_CMP(i32* %70, i32* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.vm*, %struct.vm** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @VCPU_CTR0(%struct.vm* %76, i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.vm*, %struct.vm** %3, align 8
  %80 = call i32 @vm_set_rendezvous_func(%struct.vm* %79, i32* null)
  %81 = load %struct.vm*, %struct.vm** %3, align 8
  %82 = getelementptr inbounds %struct.vm, %struct.vm* %81, i32 0, i32 1
  %83 = call i32 @pthread_cond_broadcast(i32* %82)
  br label %93

84:                                               ; preds = %68
  %85 = load %struct.vm*, %struct.vm** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @RENDEZVOUS_CTR0(%struct.vm* %85, i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.vm*, %struct.vm** %3, align 8
  %89 = getelementptr inbounds %struct.vm, %struct.vm* %88, i32 0, i32 1
  %90 = load %struct.vm*, %struct.vm** %3, align 8
  %91 = getelementptr inbounds %struct.vm, %struct.vm* %90, i32 0, i32 0
  %92 = call i32 @pthread_cond_wait(i32* %89, i32* %91)
  br label %26

93:                                               ; preds = %75, %26
  %94 = load %struct.vm*, %struct.vm** %3, align 8
  %95 = getelementptr inbounds %struct.vm, %struct.vm* %94, i32 0, i32 0
  %96 = call i32 @pthread_mutex_unlock(i32* %95)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @CPU_AND(i32*, i32*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @VCPU_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @CPU_CMP(i32*, i32*) #1

declare dso_local i32 @vm_set_rendezvous_func(%struct.vm*, i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @RENDEZVOUS_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
