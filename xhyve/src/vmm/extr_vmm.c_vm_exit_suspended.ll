; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_exit_suspended.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_exit_suspended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i64 }
%struct.vm_exit = type { %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VM_SUSPEND_NONE = common dso_local global i64 0, align 8
@VM_SUSPEND_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"vm_exit_suspended: invalid suspend type %d\00", align 1
@VM_EXITCODE_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_exit_suspended(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vm*, %struct.vm** %4, align 8
  %9 = getelementptr inbounds %struct.vm, %struct.vm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VM_SUSPEND_NONE, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.vm*, %struct.vm** %4, align 8
  %15 = getelementptr inbounds %struct.vm, %struct.vm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VM_SUSPEND_LAST, align 8
  %18 = icmp slt i64 %16, %17
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ false, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.vm*, %struct.vm** %4, align 8
  %23 = getelementptr inbounds %struct.vm, %struct.vm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %21, i8* %25)
  %27 = load %struct.vm*, %struct.vm** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.vm_exit* @vm_exitinfo(%struct.vm* %27, i32 %28)
  store %struct.vm_exit* %29, %struct.vm_exit** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %32 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %34 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @VM_EXITCODE_SUSPENDED, align 4
  %36 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %37 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vm*, %struct.vm** %4, align 8
  %39 = getelementptr inbounds %struct.vm, %struct.vm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %43 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vm_exit* @vm_exitinfo(%struct.vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
