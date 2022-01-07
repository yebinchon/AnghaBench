; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_smp_rendezvous.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_smp_rendezvous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i8*, i32, i32, i32* }

@VM_MAXCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vm_smp_rendezvous: invalid vcpuid %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Rendezvous already in progress\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"vm_smp_rendezvous: previous rendezvous is still in progress\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Initiating rendezvous\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_smp_rendezvous(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %23, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VM_MAXCPU, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br label %23

23:                                               ; preds = %21, %5
  %24 = phi i1 [ true, %5 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  br label %30

30:                                               ; preds = %38, %23
  %31 = load %struct.vm*, %struct.vm** %6, align 8
  %32 = getelementptr inbounds %struct.vm, %struct.vm* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  %34 = load %struct.vm*, %struct.vm** %6, align 8
  %35 = getelementptr inbounds %struct.vm, %struct.vm* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.vm*, %struct.vm** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @RENDEZVOUS_CTR0(%struct.vm* %39, i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.vm*, %struct.vm** %6, align 8
  %43 = getelementptr inbounds %struct.vm, %struct.vm* %42, i32 0, i32 0
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  %45 = load %struct.vm*, %struct.vm** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @vm_handle_rendezvous(%struct.vm* %45, i32 %46)
  br label %30

48:                                               ; preds = %30
  %49 = load %struct.vm*, %struct.vm** %6, align 8
  %50 = getelementptr inbounds %struct.vm, %struct.vm* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.vm*, %struct.vm** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @RENDEZVOUS_CTR0(%struct.vm* %55, i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.vm*, %struct.vm** %6, align 8
  %60 = getelementptr inbounds %struct.vm, %struct.vm* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vm*, %struct.vm** %6, align 8
  %62 = getelementptr inbounds %struct.vm, %struct.vm* %61, i32 0, i32 2
  %63 = call i32 @CPU_ZERO(i32* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.vm*, %struct.vm** %6, align 8
  %66 = getelementptr inbounds %struct.vm, %struct.vm* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.vm*, %struct.vm** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @vm_set_rendezvous_func(%struct.vm* %67, i32 %68)
  %70 = load %struct.vm*, %struct.vm** %6, align 8
  %71 = getelementptr inbounds %struct.vm, %struct.vm* %70, i32 0, i32 0
  %72 = call i32 @pthread_mutex_unlock(i32* %71)
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %86, %48
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @VM_MAXCPU, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @CPU_ISSET(i32 %78, i32* %8)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.vm*, %struct.vm** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @vcpu_notify_event(%struct.vm* %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %73

89:                                               ; preds = %73
  %90 = load %struct.vm*, %struct.vm** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @vm_handle_rendezvous(%struct.vm* %90, i32 %91)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @RENDEZVOUS_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @vm_handle_rendezvous(%struct.vm*, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @vm_set_rendezvous_func(%struct.vm*, i32) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vcpu_notify_event(%struct.vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
