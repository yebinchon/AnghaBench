; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_suspend.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32 }

@VM_SUSPEND_NONE = common dso_local global i32 0, align 4
@VM_SUSPEND_LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"virtual machine already suspended %d/%d\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"virtual machine successfully suspended %d\00", align 1
@VM_MAXCPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_suspend(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @VM_SUSPEND_NONE, align 4
  %9 = icmp ule i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VM_SUSPEND_LAST, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %10
  %17 = load %struct.vm*, %struct.vm** %4, align 8
  %18 = getelementptr inbounds %struct.vm, %struct.vm* %17, i32 0, i32 1
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @atomic_cmpset_int(i32* %18, i32 0, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.vm*, %struct.vm** %4, align 8
  %24 = load %struct.vm*, %struct.vm** %4, align 8
  %25 = getelementptr inbounds %struct.vm, %struct.vm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @VM_CTR2(%struct.vm* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EALREADY, align 4
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %16
  %31 = load %struct.vm*, %struct.vm** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @VM_CTR1(%struct.vm* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %49, %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @VM_MAXCPU, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.vm*, %struct.vm** %4, align 8
  %41 = getelementptr inbounds %struct.vm, %struct.vm* %40, i32 0, i32 0
  %42 = call i64 @CPU_ISSET(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.vm*, %struct.vm** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @vcpu_notify_event(%struct.vm* %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %34

52:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %22, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @VM_CTR2(%struct.vm*, i8*, i32, i32) #1

declare dso_local i32 @VM_CTR1(%struct.vm*, i8*, i32) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vcpu_notify_event(%struct.vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
