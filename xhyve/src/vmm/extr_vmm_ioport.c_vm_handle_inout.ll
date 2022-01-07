; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_ioport.c_vm_handle_inout.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_ioport.c_vm_handle_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vm_exit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"vm_handle_inout: invalid operand size %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_handle_inout(%struct.vm* %0, i32 %1, %struct.vm_exit* %2, i32* %3) #0 {
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vm_exit* %2, %struct.vm_exit** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %12 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 4
  br label %24

24:                                               ; preds = %21, %18, %4
  %25 = phi i1 [ true, %18 ], [ true, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %26, i8* %29)
  %31 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %32 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @emulate_inout_str(i32* %38)
  store i32 %39, i32* %10, align 4
  br label %46

40:                                               ; preds = %24
  %41 = load %struct.vm*, %struct.vm** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @emulate_inout_port(%struct.vm* %41, i32 %42, %struct.vm_exit* %43, i32* %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @emulate_inout_str(i32*) #1

declare dso_local i32 @emulate_inout_port(%struct.vm*, i32, %struct.vm_exit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
